/// FHIR Sync Service
/// Handles bidirectional synchronization between local store and FHIR server.
/// Supports offline-first with conflict resolution.
library;

import 'dart:async';

import 'package:awaj/core/fhir/auth/fhir_auth_service.dart';
import 'package:awaj/core/fhir/client/fhir_rest_client.dart';
import 'package:awaj/core/fhir/fhir_config.dart';
import 'package:awaj/core/fhir/security/fhir_audit_logger.dart';
import 'package:awaj/core/fhir/store/fhir_local_store.dart';

/// Sync state
enum FhirSyncState {
  idle,
  syncing,
  error,
}

/// Sync result for a single resource
class SyncResult {
  final String resourceType;
  final String id;
  final bool success;
  final String? error;

  const SyncResult({
    required this.resourceType,
    required this.id,
    required this.success,
    this.error,
  });
}

/// Manages bidirectional sync between local store and FHIR server.
///
/// Sync strategy:
/// 1. Push: Upload locally modified resources to server
/// 2. Pull: Download updated resources from server
/// 3. Conflict resolution: Server wins (last-write-wins) with local backup
class FhirSyncService {
  final FhirRestClient _client;
  final FhirLocalStore _store;
  final FhirAuthService _authService;
  final FhirAuditLogger _auditLogger;

  Timer? _syncTimer;
  FhirSyncState _state = FhirSyncState.idle;
  final _stateController = StreamController<FhirSyncState>.broadcast();

  FhirSyncService({
    required FhirRestClient client,
    required FhirLocalStore store,
    required FhirAuthService authService,
    required FhirAuditLogger auditLogger,
  })  : _client = client,
        _store = store,
        _authService = authService,
        _auditLogger = auditLogger;

  /// Current sync state
  FhirSyncState get state => _state;

  /// Stream of sync state changes
  Stream<FhirSyncState> get stateChanges => _stateController.stream;

  /// Start periodic background sync
  void startPeriodicSync() {
    if (!FhirConfig.offlineFirstEnabled) return;

    _syncTimer?.cancel();
    _syncTimer = Timer.periodic(FhirConfig.syncInterval, (_) => sync());
  }

  /// Stop periodic sync
  void stopPeriodicSync() {
    _syncTimer?.cancel();
    _syncTimer = null;
  }

  /// Perform a full sync cycle
  Future<List<SyncResult>> sync() async {
    if (_state == FhirSyncState.syncing) return [];
    if (!_authService.isAuthenticated) return [];
    if (FhirConfig.useMockData) return []; // Skip sync in mock mode

    _setState(FhirSyncState.syncing);
    final results = <SyncResult>[];

    try {
      // Phase 1: Push local changes to server
      final pushResults = await _pushLocalChanges();
      results.addAll(pushResults);

      // Phase 2: Pull server changes (for subscribed resource types)
      final pullResults = await _pullServerChanges();
      results.addAll(pullResults);

      _setState(FhirSyncState.idle);
    } catch (e) {
      _setState(FhirSyncState.error);
    }

    return results;
  }

  /// Push locally modified resources to server
  Future<List<SyncResult>> _pushLocalChanges() async {
    final pending = await _store.getPendingSync();
    final results = <SyncResult>[];

    for (final local in pending) {
      try {
        if (local.serverVersionId != null) {
          // Update existing server resource
          await _client.update(
            local.resourceType,
            local.id,
            local.resource,
          );
        } else {
          // Create new resource on server
          await _client.create(local.resourceType, local.resource);
        }

        await _store.markSynced(local.resourceType, local.id);
        results.add(SyncResult(
          resourceType: local.resourceType,
          id: local.id,
          success: true,
        ));

        // Audit log the sync
        final patientId = _authService.currentPatient?.id ?? 'unknown';
        await _auditLogger.logUpdate(local.resourceType, local.id, patientId);
      } catch (e) {
        results.add(SyncResult(
          resourceType: local.resourceType,
          id: local.id,
          success: false,
          error: e.toString(),
        ));
      }
    }

    return results;
  }

  /// Pull changes from server for monitored resource types
  Future<List<SyncResult>> _pullServerChanges() async {
    final results = <SyncResult>[];
    final patientId = _authService.currentPatient?.id;
    if (patientId == null) return results;

    // Resource types to sync for this patient
    const syncTypes = ['Patient', 'Communication', 'Observation'];

    for (final type in syncTypes) {
      try {
        final bundle = await _client.search(
          type,
          parameters: {
            if (type != 'Patient') 'patient': 'Patient/$patientId',
            if (type == 'Patient') '_id': patientId,
            '_sort': '-_lastUpdated',
            '_count': '50',
          },
        );

        for (final entry in bundle.entry ?? []) {
          if (entry.resource == null) continue;
          final resourceId = entry.resource!['id'] as String?;
          if (resourceId == null) continue;

          final existing = await _store.read(type, resourceId);
          if (existing == null || existing.syncStatus == SyncStatus.synced) {
            // No local changes — safe to overwrite
            await _store.save(
              type,
              resourceId,
              entry.resource!,
              syncStatus: SyncStatus.synced,
              serverVersionId: entry.resource!['meta']?['versionId'] as String?,
            );
            results.add(SyncResult(
              resourceType: type,
              id: resourceId,
              success: true,
            ));
          } else {
            // Local has pending changes — mark as conflict
            await _store.save(
              type,
              resourceId,
              existing.resource,
              syncStatus: SyncStatus.conflict,
              serverVersionId: entry.resource!['meta']?['versionId'] as String?,
            );
            results.add(SyncResult(
              resourceType: type,
              id: resourceId,
              success: false,
              error: 'Conflict: local changes exist',
            ));
          }
        }
      } catch (e) {
        results.add(SyncResult(
          resourceType: type,
          id: '*',
          success: false,
          error: e.toString(),
        ));
      }
    }

    return results;
  }

  void _setState(FhirSyncState newState) {
    _state = newState;
    _stateController.add(newState);
  }

  void dispose() {
    stopPeriodicSync();
    _stateController.close();
    _client.dispose();
  }
}
