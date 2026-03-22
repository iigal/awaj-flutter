/// FHIR R5 Infrastructure — barrel export
///
/// Complete FHIR R5 compliant health data infrastructure for Awaj.
///
/// Architecture:
/// ```
/// ┌─────────────────────────────────────────────────┐
/// │                  Flutter UI                      │
/// │          (existing app screens)                  │
/// ├─────────────────────────────────────────────────┤
/// │              Riverpod Providers                  │
/// │         (fhir_providers.dart)                    │
/// ├──────────┬──────────┬──────────┬────────────────┤
/// │  Auth    │  REST    │  Sync    │  Security      │
/// │ Service  │ Client   │ Service  │ (Encryption,   │
/// │ (SMART)  │ (CRUD)   │ (Bi-dir) │  Audit, Consent│
/// ├──────────┴──────────┴──────────┴────────────────┤
/// │              Data Mappers                        │
/// │     (FHIR ↔ PocketBase ↔ App Models)            │
/// ├─────────────────────────────────────────────────┤
/// │           FHIR R5 Resource Models                │
/// │  (Patient, Communication, Location, etc.)        │
/// ├─────────────────────────────────────────────────┤
/// │            Local Store (Encrypted)               │
/// │         (SharedPreferences + AES)                │
/// └─────────────────────────────────────────────────┘
/// ```
library;

// Config
export 'fhir_config.dart';
export 'fhir_constants.dart';

// Models
export 'models/models.dart';

// Auth
export 'auth/fhir_auth_service.dart';
export 'auth/fhir_auth_token.dart';
export 'auth/mock_fhir_auth.dart';

// Client
export 'client/fhir_rest_client.dart';

// Mappers
export 'mappers/patient_mapper.dart';
export 'mappers/communication_mapper.dart';
export 'mappers/location_mapper.dart';

// Store
export 'store/fhir_local_store.dart';

// Sync
export 'sync/fhir_sync_service.dart';

// Security
export 'security/fhir_encryption.dart';
export 'security/fhir_audit_logger.dart';
export 'security/fhir_consent_manager.dart';

// Providers
export 'providers/fhir_providers.dart';

// Bridge (temporary — until PocketBase is fully replaced)
export 'mock_fhir_auth_service.dart';
