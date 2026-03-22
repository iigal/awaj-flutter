/// FHIR R5 constants — resource types, code systems, value sets.
library;

/// FHIR Resource types used in this app.
class FhirResourceType {
  FhirResourceType._();

  static const String patient = 'Patient';
  static const String practitioner = 'Practitioner';
  static const String organization = 'Organization';
  static const String location = 'Location';
  static const String communication = 'Communication';
  static const String observation = 'Observation';
  static const String condition = 'Condition';
  static const String encounter = 'Encounter';
  static const String bundle = 'Bundle';
  static const String operationOutcome = 'OperationOutcome';
  static const String auditEvent = 'AuditEvent';
  static const String consent = 'Consent';
  static const String subscription = 'Subscription';
}

/// FHIR identifier systems relevant to Nepal health infrastructure.
class FhirIdentifierSystem {
  FhirIdentifierSystem._();

  /// Nepal Health ID (hypothetical OID — replace with real one when assigned)
  static const String nepalHealthId = 'urn:oid:2.16.524.1.1';

  /// Nepal National ID
  static const String nepalNationalId = 'urn:oid:2.16.524.1.2';

  /// Nepal Voter ID
  static const String nepalVoterId = 'urn:oid:2.16.524.1.3';

  /// App-internal user ID
  static const String appUserId = 'urn:awaj:user-id';
}

/// FHIR administrative gender codes.
/// See: https://hl7.org/fhir/R5/valueset-administrative-gender.html
class FhirAdministrativeGender {
  FhirAdministrativeGender._();

  static const String male = 'male';
  static const String female = 'female';
  static const String other = 'other';
  static const String unknown = 'unknown';

  static String fromAppGender(String? gender) {
    switch (gender?.toLowerCase()) {
      case 'male':
        return male;
      case 'female':
        return female;
      case 'others':
      case 'other':
        return other;
      default:
        return unknown;
    }
  }

  static String toAppGender(String? fhirGender) {
    switch (fhirGender) {
      case male:
        return 'male';
      case female:
        return 'female';
      case other:
        return 'others';
      default:
        return 'unknown';
    }
  }
}

/// FHIR Communication category codes for complaints & announcements.
class FhirCommunicationCategory {
  FhirCommunicationCategory._();

  static const String system = 'http://terminology.hl7.org/CodeSystem/communication-category';
  static const String complaint = 'complaint';
  static const String announcement = 'announcement';
  static const String notification = 'notification';
}

/// FHIR Communication status codes.
/// See: https://hl7.org/fhir/R5/valueset-event-status.html
class FhirCommunicationStatus {
  FhirCommunicationStatus._();

  static const String preparation = 'preparation';
  static const String inProgress = 'in-progress';
  static const String completed = 'completed';
  static const String notDone = 'not-done';
  static const String enteredInError = 'entered-in-error';

  static String fromAppStatus(String? status) {
    switch (status?.toLowerCase()) {
      case 'pending':
        return preparation;
      case 'in-progress':
      case 'in_progress':
        return inProgress;
      case 'resolved':
      case 'completed':
        return completed;
      default:
        return preparation;
    }
  }

  static String toAppStatus(String? fhirStatus) {
    switch (fhirStatus) {
      case preparation:
        return 'pending';
      case inProgress:
        return 'in-progress';
      case completed:
        return 'resolved';
      default:
        return 'pending';
    }
  }
}

/// FHIR Location status codes.
class FhirLocationStatus {
  FhirLocationStatus._();

  static const String active = 'active';
  static const String suspended = 'suspended';
  static const String inactive = 'inactive';
}

/// FHIR Audit Event action codes.
class FhirAuditAction {
  FhirAuditAction._();

  static const String create = 'C';
  static const String read = 'R';
  static const String update = 'U';
  static const String delete = 'D';
  static const String execute = 'E';
}

/// FHIR Consent scope codes.
class FhirConsentScope {
  FhirConsentScope._();

  static const String system = 'http://terminology.hl7.org/CodeSystem/consentscope';
  static const String patientPrivacy = 'patient-privacy';
  static const String treatment = 'treatment';
  static const String research = 'research';
}
