/// FHIR Consent Manager
/// Manages patient consent for data sharing per FHIR R5 Consent resource.
/// See: https://hl7.org/fhir/R5/consent.html
///
/// Required for:
/// - Patient data sharing consent tracking
/// - Research data opt-in/opt-out
/// - Third-party app access control
library;

import 'dart:convert';

import 'package:awaj/core/fhir/fhir_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Consent categories
enum ConsentCategory {
  patientPrivacy,
  treatment,
  research,
  dataSharing,
}

/// Individual consent record
class PatientConsent {
  final String patientId;
  final ConsentCategory category;
  final bool granted;
  final DateTime dateRecorded;
  final String? description;

  const PatientConsent({
    required this.patientId,
    required this.category,
    required this.granted,
    required this.dateRecorded,
    this.description,
  });

  Map<String, dynamic> toJson() => {
        'patientId': patientId,
        'category': category.name,
        'granted': granted,
        'dateRecorded': dateRecorded.toIso8601String(),
        if (description != null) 'description': description,
      };

  factory PatientConsent.fromJson(Map<String, dynamic> json) => PatientConsent(
        patientId: json['patientId'] as String,
        category: ConsentCategory.values.byName(json['category'] as String),
        granted: json['granted'] as bool,
        dateRecorded: DateTime.parse(json['dateRecorded'] as String),
        description: json['description'] as String?,
      );

  /// Convert to FHIR R5 Consent resource JSON
  Map<String, dynamic> toFhirJson() => {
        'resourceType': FhirResourceType.consent,
        'status': granted ? 'active' : 'rejected',
        'scope': {
          'coding': [
            {
              'system': FhirConsentScope.system,
              'code': _categoryToScope(),
            }
          ]
        },
        'patient': {
          'reference': 'Patient/$patientId',
        },
        'dateTime': dateRecorded.toIso8601String(),
        'provision': {
          'type': granted ? 'permit' : 'deny',
        },
      };

  String _categoryToScope() {
    switch (category) {
      case ConsentCategory.patientPrivacy:
        return FhirConsentScope.patientPrivacy;
      case ConsentCategory.treatment:
        return FhirConsentScope.treatment;
      case ConsentCategory.research:
        return FhirConsentScope.research;
      case ConsentCategory.dataSharing:
        return FhirConsentScope.patientPrivacy;
    }
  }
}

/// Manages patient consent records
class FhirConsentManager {
  static const String _storageKey = 'fhir_patient_consents';

  /// Record a consent decision
  Future<void> recordConsent({
    required String patientId,
    required ConsentCategory category,
    required bool granted,
    String? description,
  }) async {
    final consent = PatientConsent(
      patientId: patientId,
      category: category,
      granted: granted,
      dateRecorded: DateTime.now(),
      description: description,
    );

    final prefs = await SharedPreferences.getInstance();
    final existing = await _loadConsents(prefs);
    // Remove old consent for same patient+category
    existing.removeWhere(
      (c) => c.patientId == patientId && c.category == category,
    );
    existing.add(consent);
    await _saveConsents(prefs, existing);
  }

  /// Check if a specific consent is granted
  Future<bool> isConsentGranted(String patientId, ConsentCategory category) async {
    final prefs = await SharedPreferences.getInstance();
    final consents = await _loadConsents(prefs);
    final consent = consents
        .where((c) => c.patientId == patientId && c.category == category)
        .lastOrNull;
    return consent?.granted ?? false;
  }

  /// Get all consents for a patient
  Future<List<PatientConsent>> getConsents(String patientId) async {
    final prefs = await SharedPreferences.getInstance();
    final consents = await _loadConsents(prefs);
    return consents.where((c) => c.patientId == patientId).toList();
  }

  /// Revoke all consents for a patient (e.g., on account deletion)
  Future<void> revokeAllConsents(String patientId) async {
    final prefs = await SharedPreferences.getInstance();
    final consents = await _loadConsents(prefs);
    consents.removeWhere((c) => c.patientId == patientId);
    await _saveConsents(prefs, consents);
  }

  /// Clear all consent data (for logout)
  Future<void> clearAll() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_storageKey);
  }

  Future<List<PatientConsent>> _loadConsents(SharedPreferences prefs) async {
    final json = prefs.getString(_storageKey);
    if (json == null) return [];
    final list = jsonDecode(json) as List;
    return list.map((e) => PatientConsent.fromJson(e as Map<String, dynamic>)).toList();
  }

  Future<void> _saveConsents(SharedPreferences prefs, List<PatientConsent> consents) async {
    await prefs.setString(
      _storageKey,
      jsonEncode(consents.map((c) => c.toJson()).toList()),
    );
  }
}
