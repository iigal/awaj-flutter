/// FHIR/SMART on FHIR auth token container.
/// Holds OAuth2 tokens and FHIR-specific session data.
library;

class FhirAuthToken {
  final String accessToken;
  final String? refreshToken;
  final String? idToken;
  final String? tokenType;
  final DateTime expiresAt;
  final List<String> scopes;
  final String? patientId; // SMART launch context

  const FhirAuthToken({
    required this.accessToken,
    this.refreshToken,
    this.idToken,
    this.tokenType = 'Bearer',
    required this.expiresAt,
    this.scopes = const [],
    this.patientId,
  });

  bool get isExpired => DateTime.now().isAfter(expiresAt);

  bool get needsRefresh =>
      DateTime.now().isAfter(expiresAt.subtract(const Duration(minutes: 5)));

  bool hasScope(String scope) => scopes.contains(scope);

  Map<String, dynamic> toJson() => {
        'access_token': accessToken,
        if (refreshToken != null) 'refresh_token': refreshToken,
        if (idToken != null) 'id_token': idToken,
        'token_type': tokenType,
        'expires_at': expiresAt.toIso8601String(),
        'scopes': scopes,
        if (patientId != null) 'patient': patientId,
      };

  factory FhirAuthToken.fromJson(Map<String, dynamic> json) => FhirAuthToken(
        accessToken: json['access_token'] as String,
        refreshToken: json['refresh_token'] as String?,
        idToken: json['id_token'] as String?,
        tokenType: json['token_type'] as String? ?? 'Bearer',
        expiresAt: DateTime.parse(json['expires_at'] as String),
        scopes: (json['scopes'] as List?)?.cast<String>() ?? [],
        patientId: json['patient'] as String?,
      );
}
