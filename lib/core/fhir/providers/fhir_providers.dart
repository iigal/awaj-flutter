/// FHIR Riverpod providers
/// Central dependency injection for all FHIR services.
library;

import 'package:awaj/core/fhir/auth/fhir_auth_service.dart';
import 'package:awaj/core/fhir/client/fhir_rest_client.dart';
import 'package:awaj/core/fhir/security/fhir_audit_logger.dart';
import 'package:awaj/core/fhir/security/fhir_consent_manager.dart';
import 'package:awaj/core/fhir/store/fhir_local_store.dart';
import 'package:awaj/core/fhir/sync/fhir_sync_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// FHIR Auth Service — singleton
final fhirAuthServiceProvider = Provider<FhirAuthService>((ref) {
  final service = FhirAuthService();
  ref.onDispose(() => service.dispose());
  return service;
});

/// FHIR Auth State — stream of auth state changes
final fhirAuthStateProvider = StreamProvider<FhirAuthState>((ref) {
  final authService = ref.watch(fhirAuthServiceProvider);
  return authService.authStateChanges;
});

/// FHIR Local Store — singleton
final fhirLocalStoreProvider = Provider<FhirLocalStore>((ref) {
  return FhirLocalStore();
});

/// FHIR REST Client
final fhirRestClientProvider = Provider<FhirRestClient>((ref) {
  final authService = ref.watch(fhirAuthServiceProvider);
  final client = FhirRestClient(authService: authService);
  ref.onDispose(() => client.dispose());
  return client;
});

/// FHIR Audit Logger
final fhirAuditLoggerProvider = Provider<FhirAuditLogger>((ref) {
  final store = ref.watch(fhirLocalStoreProvider);
  return FhirAuditLogger(store: store);
});

/// FHIR Consent Manager
final fhirConsentManagerProvider = Provider<FhirConsentManager>((ref) {
  return FhirConsentManager();
});

/// FHIR Sync Service
final fhirSyncServiceProvider = Provider<FhirSyncService>((ref) {
  final client = ref.watch(fhirRestClientProvider);
  final store = ref.watch(fhirLocalStoreProvider);
  final authService = ref.watch(fhirAuthServiceProvider);
  final auditLogger = ref.watch(fhirAuditLoggerProvider);

  final syncService = FhirSyncService(
    client: client,
    store: store,
    authService: authService,
    auditLogger: auditLogger,
  );
  ref.onDispose(() => syncService.dispose());
  return syncService;
});

/// Current authenticated patient — convenience provider
final currentPatientProvider = Provider<String?>((ref) {
  final authService = ref.watch(fhirAuthServiceProvider);
  return authService.currentPatient?.id;
});
