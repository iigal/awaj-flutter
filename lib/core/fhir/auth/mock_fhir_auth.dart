/// Mock FHIR authentication for development.
/// Returns realistic FHIR R5 Patient resources and fake OAuth2 tokens.
library;

import 'package:awaj/core/fhir/auth/fhir_auth_service.dart';
import 'package:awaj/core/fhir/auth/fhir_auth_token.dart';
import 'package:awaj/core/fhir/fhir_config.dart';
import 'package:awaj/core/fhir/fhir_constants.dart';
import 'package:awaj/core/fhir/models/fhir_patient.dart';
import 'package:awaj/core/fhir/models/fhir_types.dart';

class MockFhirAuth {
  MockFhirAuth._();

  /// Mock patients keyed by username
  static final Map<String, FhirPatient> _mockPatients = {
    'test': FhirPatient(
      id: 'patient-001',
      active: true,
      identifier: [
        FhirIdentifier(
          use: 'official',
          system: FhirIdentifierSystem.nepalHealthId,
          value: 'NP-HID-12345',
        ),
        FhirIdentifier(
          use: 'secondary',
          system: FhirIdentifierSystem.nepalNationalId,
          value: 'NP-NID-67890',
        ),
      ],
      name: [
        FhirHumanName(
          use: 'official',
          family: 'Shakya',
          given: ['Atish'],
          text: 'Atish Shakya',
        ),
      ],
      gender: FhirAdministrativeGender.male,
      birthDate: '1990-01-15',
      telecom: [
        FhirContactPoint(system: 'phone', value: '+977-9841234567', use: 'mobile'),
        FhirContactPoint(system: 'email', value: 'atish@example.com', use: 'work'),
      ],
      address: [
        FhirAddress(
          use: 'home',
          type: 'physical',
          city: 'Kathmandu',
          state: 'Bagmati',
          country: 'NP',
          text: 'Kathmandu, Bagmati, Nepal',
        ),
      ],
      communication: [
        FhirPatientCommunication(
          language: FhirCodeableConcept(
            coding: [FhirCoding(system: 'urn:ietf:bcp:47', code: 'ne', display: 'Nepali')],
            text: 'Nepali',
          ),
          preferred: true,
        ),
        FhirPatientCommunication(
          language: FhirCodeableConcept(
            coding: [FhirCoding(system: 'urn:ietf:bcp:47', code: 'en', display: 'English')],
            text: 'English',
          ),
        ),
      ],
    ),
    'doctor': FhirPatient(
      id: 'patient-002',
      active: true,
      identifier: [
        FhirIdentifier(
          use: 'official',
          system: FhirIdentifierSystem.nepalHealthId,
          value: 'NP-HID-54321',
        ),
      ],
      name: [
        FhirHumanName(
          use: 'official',
          family: 'Thapa',
          given: ['Sita'],
          text: 'Sita Thapa',
        ),
      ],
      gender: FhirAdministrativeGender.female,
      birthDate: '1985-06-20',
      telecom: [
        FhirContactPoint(system: 'phone', value: '+977-9812345678', use: 'mobile'),
        FhirContactPoint(system: 'email', value: 'sita@example.com', use: 'work'),
      ],
      address: [
        FhirAddress(
          use: 'home',
          city: 'Pokhara',
          state: 'Gandaki',
          country: 'NP',
          text: 'Pokhara, Gandaki, Nepal',
        ),
      ],
    ),
  };

  /// Authenticate with mock credentials.
  /// Any username/password is accepted. Known usernames get specific patient data.
  static Future<FhirAuthAuthenticated> login(String username, String password) async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 300));

    // Get patient for this username, or create a default one
    final patient = _mockPatients[username.toLowerCase()] ?? _defaultPatient(username);

    // Generate mock OAuth2 token
    final token = FhirAuthToken(
      accessToken: 'mock-access-token-${DateTime.now().millisecondsSinceEpoch}',
      refreshToken: 'mock-refresh-token-${DateTime.now().millisecondsSinceEpoch}',
      idToken: 'mock-id-token',
      expiresAt: DateTime.now().add(const Duration(hours: 8)),
      scopes: FhirConfig.defaultScopes,
      patientId: patient.id,
    );

    return FhirAuthAuthenticated(token: token, patient: patient);
  }

  /// Generate a default patient for unknown usernames
  static FhirPatient _defaultPatient(String username) => FhirPatient(
        id: 'patient-${username.hashCode.abs()}',
        active: true,
        identifier: [
          FhirIdentifier(
            use: 'official',
            system: FhirIdentifierSystem.appUserId,
            value: username,
          ),
        ],
        name: [
          FhirHumanName(
            use: 'official',
            text: username,
            given: [username],
          ),
        ],
        gender: FhirAdministrativeGender.unknown,
        birthDate: '2000-01-01',
        telecom: [
          FhirContactPoint(system: 'phone', value: '+977-0000000000', use: 'mobile'),
        ],
      );
}
