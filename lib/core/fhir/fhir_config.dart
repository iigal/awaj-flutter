/// FHIR R5 Configuration
///
/// Central configuration for FHIR server connectivity,
/// SMART on FHIR auth endpoints, and feature flags.
library;

class FhirConfig {
  FhirConfig._();

  /// FHIR version
  static const String fhirVersion = 'R5';

  /// FHIR MIME type for requests
  static const String fhirMimeType = 'application/fhir+json';

  // ---------------------------------------------------------------------------
  // Server endpoints
  // ---------------------------------------------------------------------------

  /// HAPI FHIR public R5 sandbox (for development/testing)
  static const String publicSandboxUrl = 'https://hapi.fhir.org/baseR5';

  /// Local HAPI FHIR server (Docker: docker run -p 8080:8080 hapiproject/hapi)
  static const String localServerUrl = 'http://localhost:8080/fhir';

  /// Active FHIR server base URL
  /// Change this to point to your deployment
  static String baseUrl = publicSandboxUrl;

  // ---------------------------------------------------------------------------
  // SMART on FHIR / OAuth2 configuration
  // ---------------------------------------------------------------------------

  /// SMART configuration discovery endpoint
  static String get smartConfigUrl => '$baseUrl/.well-known/smart-configuration';

  /// OAuth2 authorize endpoint
  static String authorizeUrl = '$baseUrl/auth/authorize';

  /// OAuth2 token endpoint
  static String tokenUrl = '$baseUrl/auth/token';

  /// OAuth2 client ID (register with your FHIR server)
  static const String clientId = 'awaj-flutter-app';

  /// OAuth2 redirect URI for mobile
  static const String redirectUri = 'com.awaj.app://callback';

  /// OAuth2 scopes for SMART on FHIR
  /// See: https://www.hl7.org/fhir/smart-app-launch/scopes-and-launch-context.html
  static const List<String> defaultScopes = [
    'openid',
    'fhirUser',
    'launch/patient',
    'patient/Patient.read',
    'patient/Patient.write',
    'patient/Observation.read',
    'patient/Observation.write',
    'patient/Condition.read',
    'patient/Communication.read',
    'patient/Communication.write',
    'patient/Encounter.read',
    'patient/Location.read',
    'patient/Organization.read',
  ];

  // ---------------------------------------------------------------------------
  // Security configuration
  // ---------------------------------------------------------------------------

  /// Enable TLS certificate pinning in production
  static const bool enableCertificatePinning = false;

  /// Token refresh threshold (refresh when token expires within this duration)
  static const Duration tokenRefreshThreshold = Duration(minutes: 5);

  /// Session timeout
  static const Duration sessionTimeout = Duration(hours: 8);

  /// Enable local data encryption (AES-256)
  static const bool enableLocalEncryption = true;

  /// Enable audit logging
  static const bool enableAuditLogging = true;

  // ---------------------------------------------------------------------------
  // Sync configuration
  // ---------------------------------------------------------------------------

  /// Sync interval for background data synchronization
  static const Duration syncInterval = Duration(minutes: 15);

  /// Enable offline-first mode
  static const bool offlineFirstEnabled = true;

  /// Max retry attempts for failed sync operations
  static const int maxSyncRetries = 3;

  // ---------------------------------------------------------------------------
  // Mock mode (development)
  // ---------------------------------------------------------------------------

  /// When true, uses mock data instead of real FHIR server
  static bool useMockData = true;

  /// Switch to real FHIR server
  static void enableRealServer({String? serverUrl}) {
    useMockData = false;
    if (serverUrl != null) {
      baseUrl = serverUrl;
    }
  }

  /// Switch to mock mode
  static void enableMockMode() {
    useMockData = true;
  }
}
