/// Maps between FHIR R5 Patient and PocketBase authStore record data.
/// This bridge allows the app to use FHIR data internally while
/// keeping existing PocketBase-dependent UI code working.
library;

import 'package:awaj/core/fhir/fhir_constants.dart';
import 'package:awaj/core/fhir/models/fhir_patient.dart';
import 'package:awaj/core/fhir/models/fhir_types.dart';
import 'package:pocketbase/pocketbase.dart';

class PatientMapper {
  PatientMapper._();

  /// Convert FHIR Patient → PocketBase RecordModel
  /// Used to populate authStore for backward compatibility.
  static RecordModel toRecordModel(FhirPatient patient, {String? username}) {
    return RecordModel({
      'id': patient.id ?? '',
      'collectionId': 'fhir_patients',
      'collectionName': 'users',
      'name': patient.displayName,
      'username': username ?? patient.identifierBySystem(FhirIdentifierSystem.appUserId) ?? '',
      'gender': FhirAdministrativeGender.toAppGender(patient.gender),
      'dateOfBirth': patient.birthDate != null ? '${patient.birthDate}T00:00:00.000Z' : '',
      'phoneNumber': patient.phoneNumber ?? '',
      'email': patient.email ?? '',
      'created': DateTime.now().toIso8601String(),
      'updated': DateTime.now().toIso8601String(),
    });
  }

  /// Convert PocketBase RecordModel → FHIR Patient
  /// Used when migrating from PocketBase to FHIR.
  static FhirPatient fromRecordModel(RecordModel record) {
    final data = record.data;
    final name = data['name'] as String? ?? '';
    final nameParts = name.split(' ');

    return FhirPatient(
      id: data['id'] as String?,
      active: true,
      identifier: [
        FhirIdentifier(
          use: 'usual',
          system: FhirIdentifierSystem.appUserId,
          value: data['username'] as String? ?? '',
        ),
      ],
      name: [
        FhirHumanName(
          use: 'official',
          text: name,
          given: nameParts.length > 1 ? nameParts.sublist(0, nameParts.length - 1) : [name],
          family: nameParts.length > 1 ? nameParts.last : null,
        ),
      ],
      gender: FhirAdministrativeGender.fromAppGender(data['gender'] as String?),
      birthDate: _extractDate(data['dateOfBirth'] as String?),
      telecom: [
        if (data['phoneNumber'] != null && (data['phoneNumber'] as String).isNotEmpty)
          FhirContactPoint(
            system: 'phone',
            value: data['phoneNumber'] as String,
            use: 'mobile',
          ),
        if (data['email'] != null && (data['email'] as String).isNotEmpty)
          FhirContactPoint(
            system: 'email',
            value: data['email'] as String,
            use: 'work',
          ),
      ],
    );
  }

  /// Extract YYYY-MM-DD from an ISO 8601 datetime string
  static String? _extractDate(String? dateTimeString) {
    if (dateTimeString == null || dateTimeString.isEmpty) return null;
    try {
      return DateTime.parse(dateTimeString).toIso8601String().substring(0, 10);
    } catch (_) {
      return dateTimeString.length >= 10 ? dateTimeString.substring(0, 10) : null;
    }
  }
}
