/// Bridge between FHIR Auth Service and PocketBase authStore.
/// This file exists to keep the login page working with minimal changes
/// while the app transitions from PocketBase to FHIR.
library;

import 'dart:convert';

import 'package:awaj/core/fhir/auth/fhir_auth_service.dart';
import 'package:awaj/core/fhir/mappers/patient_mapper.dart';
import 'package:awaj/db.dart';

/// Singleton FHIR auth service instance used across the app.
/// In the future, this will be provided via Riverpod instead.
final fhirAuth = FhirAuthService();

class MockFhirAuthService {
  MockFhirAuthService._();

  /// Login via FHIR auth and bridge to PocketBase authStore.
  static Future<void> login(String username, String password) async {
    // Authenticate via FHIR service
    final result = await fhirAuth.login(username, password);

    // Map FHIR Patient to PocketBase RecordModel for backward compat
    final record = PatientMapper.toRecordModel(result.patient, username: username);
    final token = _generateMockJwt(result.patient.id ?? 'unknown');

    // Save to PocketBase authStore so existing app code works
    pocketBaseDB.authStore.save(token, record);
  }

  /// Logout from both FHIR and PocketBase
  static Future<void> logout() async {
    await fhirAuth.logout();
    pocketBaseDB.authStore.clear();
  }

  /// Generate a structurally valid JWT for PocketBase authStore.isValid
  static String _generateMockJwt(String userId) {
    final header = base64Url.encode(utf8.encode('{"alg":"HS256","typ":"JWT"}'));
    final payload = base64Url.encode(utf8.encode(jsonEncode({
      "id": userId,
      "exp": DateTime.now().add(const Duration(days: 30)).millisecondsSinceEpoch ~/ 1000,
      "type": "authRecord",
      "collectionId": "fhir_patients",
    })));
    final signature = base64Url.encode(utf8.encode('mock-signature'));
    return '$header.$payload.$signature';
  }
}
