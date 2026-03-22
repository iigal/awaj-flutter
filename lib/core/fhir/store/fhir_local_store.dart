/// FHIR Local Data Store
/// Offline-first storage for FHIR resources using SharedPreferences.
/// In production, replace with fhir_r5_db (SQLite/Drift with encryption).
library;

import 'dart:convert';

import 'package:awaj/core/fhir/fhir_config.dart';
import 'package:awaj/core/fhir/security/fhir_encryption.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Sync status for locally stored resources
enum SyncStatus {
  synced,    // matches server
  pending,   // created/updated locally, not yet pushed
  conflict,  // local and server versions differ
  deleted,   // marked for deletion
}

/// Wrapper for locally stored FHIR resources with sync metadata
class LocalFhirResource {
  final String resourceType;
  final String id;
  final Map<String, dynamic> resource;
  final SyncStatus syncStatus;
  final DateTime lastModified;
  final String? serverVersionId;

  const LocalFhirResource({
    required this.resourceType,
    required this.id,
    required this.resource,
    required this.syncStatus,
    required this.lastModified,
    this.serverVersionId,
  });

  Map<String, dynamic> toJson() => {
        'resourceType': resourceType,
        'id': id,
        'resource': resource,
        'syncStatus': syncStatus.name,
        'lastModified': lastModified.toIso8601String(),
        if (serverVersionId != null) 'serverVersionId': serverVersionId,
      };

  factory LocalFhirResource.fromJson(Map<String, dynamic> json) => LocalFhirResource(
        resourceType: json['resourceType'] as String,
        id: json['id'] as String,
        resource: json['resource'] as Map<String, dynamic>,
        syncStatus: SyncStatus.values.byName(json['syncStatus'] as String),
        lastModified: DateTime.parse(json['lastModified'] as String),
        serverVersionId: json['serverVersionId'] as String?,
      );
}

/// Local FHIR resource store with encryption support.
class FhirLocalStore {
  static const String _storePrefix = 'fhir_store_';
  static const String _indexKey = 'fhir_store_index';

  SharedPreferences? _prefs;

  Future<SharedPreferences> get _preferences async {
    _prefs ??= await SharedPreferences.getInstance();
    return _prefs!;
  }

  /// Store a FHIR resource locally
  Future<void> save(
    String resourceType,
    String id,
    Map<String, dynamic> resource, {
    SyncStatus syncStatus = SyncStatus.synced,
    String? serverVersionId,
  }) async {
    final prefs = await _preferences;
    final key = _key(resourceType, id);

    final localResource = LocalFhirResource(
      resourceType: resourceType,
      id: id,
      resource: resource,
      syncStatus: syncStatus,
      lastModified: DateTime.now(),
      serverVersionId: serverVersionId,
    );

    final jsonString = jsonEncode(localResource.toJson());
    final stored = FhirConfig.enableLocalEncryption
        ? FhirEncryption.encrypt(jsonString)
        : jsonString;

    await prefs.setString(key, stored);
    await _addToIndex(resourceType, id);
  }

  /// Read a FHIR resource from local store
  Future<LocalFhirResource?> read(String resourceType, String id) async {
    final prefs = await _preferences;
    final key = _key(resourceType, id);
    final stored = prefs.getString(key);

    if (stored == null) return null;

    final jsonString = FhirConfig.enableLocalEncryption
        ? FhirEncryption.decrypt(stored)
        : stored;

    return LocalFhirResource.fromJson(
      jsonDecode(jsonString) as Map<String, dynamic>,
    );
  }

  /// List all resources of a given type
  Future<List<LocalFhirResource>> listByType(String resourceType) async {
    final index = await _getIndex();
    final ids = index[resourceType] ?? [];
    final results = <LocalFhirResource>[];

    for (final id in ids) {
      final resource = await read(resourceType, id);
      if (resource != null) results.add(resource);
    }

    return results;
  }

  /// Get all resources pending sync
  Future<List<LocalFhirResource>> getPendingSync() async {
    final index = await _getIndex();
    final results = <LocalFhirResource>[];

    for (final entry in index.entries) {
      for (final id in entry.value) {
        final resource = await read(entry.key, id);
        if (resource != null && resource.syncStatus == SyncStatus.pending) {
          results.add(resource);
        }
      }
    }

    return results;
  }

  /// Delete a resource from local store
  Future<void> delete(String resourceType, String id) async {
    final prefs = await _preferences;
    await prefs.remove(_key(resourceType, id));
    await _removeFromIndex(resourceType, id);
  }

  /// Mark a resource as synced
  Future<void> markSynced(
    String resourceType,
    String id, {
    String? serverVersionId,
  }) async {
    final existing = await read(resourceType, id);
    if (existing == null) return;

    await save(
      resourceType,
      id,
      existing.resource,
      syncStatus: SyncStatus.synced,
      serverVersionId: serverVersionId ?? existing.serverVersionId,
    );
  }

  /// Clear all local data (for logout)
  Future<void> clearAll() async {
    final prefs = await _preferences;
    final index = await _getIndex();

    for (final entry in index.entries) {
      for (final id in entry.value) {
        await prefs.remove(_key(entry.key, id));
      }
    }

    await prefs.remove(_indexKey);
  }

  // ---------------------------------------------------------------------------
  // Internal helpers
  // ---------------------------------------------------------------------------

  String _key(String resourceType, String id) => '$_storePrefix${resourceType}_$id';

  Future<Map<String, List<String>>> _getIndex() async {
    final prefs = await _preferences;
    final indexJson = prefs.getString(_indexKey);
    if (indexJson == null) return {};

    final raw = jsonDecode(indexJson) as Map<String, dynamic>;
    return raw.map((k, v) => MapEntry(k, (v as List).cast<String>()));
  }

  Future<void> _addToIndex(String resourceType, String id) async {
    final prefs = await _preferences;
    final index = await _getIndex();
    final ids = index[resourceType] ?? [];
    if (!ids.contains(id)) ids.add(id);
    index[resourceType] = ids;
    await prefs.setString(_indexKey, jsonEncode(index));
  }

  Future<void> _removeFromIndex(String resourceType, String id) async {
    final prefs = await _preferences;
    final index = await _getIndex();
    index[resourceType]?.remove(id);
    if (index[resourceType]?.isEmpty ?? false) index.remove(resourceType);
    await prefs.setString(_indexKey, jsonEncode(index));
  }
}
