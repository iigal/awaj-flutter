/// FHIR R5 Patient Resource
/// See: https://hl7.org/fhir/R5/patient.html
library;

import 'fhir_types.dart';

class FhirPatient {
  final String resourceType;
  final String? id;
  final FhirMeta? meta;
  final List<FhirIdentifier>? identifier;
  final bool? active;
  final List<FhirHumanName>? name;
  final List<FhirContactPoint>? telecom;
  final String? gender; // male | female | other | unknown
  final String? birthDate; // YYYY-MM-DD
  final List<FhirAddress>? address;
  final FhirCodeableConcept? maritalStatus;
  final List<FhirAttachment>? photo;
  final List<FhirPatientCommunication>? communication;
  final FhirReference? managingOrganization;

  const FhirPatient({
    this.resourceType = 'Patient',
    this.id,
    this.meta,
    this.identifier,
    this.active,
    this.name,
    this.telecom,
    this.gender,
    this.birthDate,
    this.address,
    this.maritalStatus,
    this.photo,
    this.communication,
    this.managingOrganization,
  });

  /// Display name from the first name entry
  String get displayName => name?.firstOrNull?.displayName ?? 'Unknown';

  /// Primary phone number
  String? get phoneNumber => telecom
      ?.where((t) => t.system == 'phone')
      .firstOrNull
      ?.value;

  /// Primary email
  String? get email => telecom
      ?.where((t) => t.system == 'email')
      .firstOrNull
      ?.value;

  /// Get identifier by system
  String? identifierBySystem(String system) =>
      identifier?.where((i) => i.system == system).firstOrNull?.value;

  FhirPatient copyWith({
    String? id,
    FhirMeta? meta,
    List<FhirIdentifier>? identifier,
    bool? active,
    List<FhirHumanName>? name,
    List<FhirContactPoint>? telecom,
    String? gender,
    String? birthDate,
    List<FhirAddress>? address,
    FhirCodeableConcept? maritalStatus,
    List<FhirAttachment>? photo,
    List<FhirPatientCommunication>? communication,
    FhirReference? managingOrganization,
  }) =>
      FhirPatient(
        id: id ?? this.id,
        meta: meta ?? this.meta,
        identifier: identifier ?? this.identifier,
        active: active ?? this.active,
        name: name ?? this.name,
        telecom: telecom ?? this.telecom,
        gender: gender ?? this.gender,
        birthDate: birthDate ?? this.birthDate,
        address: address ?? this.address,
        maritalStatus: maritalStatus ?? this.maritalStatus,
        photo: photo ?? this.photo,
        communication: communication ?? this.communication,
        managingOrganization: managingOrganization ?? this.managingOrganization,
      );

  Map<String, dynamic> toJson() => {
        'resourceType': resourceType,
        if (id != null) 'id': id,
        if (meta != null) 'meta': meta!.toJson(),
        if (identifier != null) 'identifier': identifier!.map((i) => i.toJson()).toList(),
        if (active != null) 'active': active,
        if (name != null) 'name': name!.map((n) => n.toJson()).toList(),
        if (telecom != null) 'telecom': telecom!.map((t) => t.toJson()).toList(),
        if (gender != null) 'gender': gender,
        if (birthDate != null) 'birthDate': birthDate,
        if (address != null) 'address': address!.map((a) => a.toJson()).toList(),
        if (maritalStatus != null) 'maritalStatus': maritalStatus!.toJson(),
        if (photo != null) 'photo': photo!.map((p) => p.toJson()).toList(),
        if (communication != null) 'communication': communication!.map((c) => c.toJson()).toList(),
        if (managingOrganization != null) 'managingOrganization': managingOrganization!.toJson(),
      };

  factory FhirPatient.fromJson(Map<String, dynamic> json) => FhirPatient(
        id: json['id'] as String?,
        meta: json['meta'] != null ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>) : null,
        identifier: (json['identifier'] as List?)
            ?.map((i) => FhirIdentifier.fromJson(i as Map<String, dynamic>))
            .toList(),
        active: json['active'] as bool?,
        name: (json['name'] as List?)
            ?.map((n) => FhirHumanName.fromJson(n as Map<String, dynamic>))
            .toList(),
        telecom: (json['telecom'] as List?)
            ?.map((t) => FhirContactPoint.fromJson(t as Map<String, dynamic>))
            .toList(),
        gender: json['gender'] as String?,
        birthDate: json['birthDate'] as String?,
        address: (json['address'] as List?)
            ?.map((a) => FhirAddress.fromJson(a as Map<String, dynamic>))
            .toList(),
        maritalStatus: json['maritalStatus'] != null
            ? FhirCodeableConcept.fromJson(json['maritalStatus'] as Map<String, dynamic>)
            : null,
        photo: (json['photo'] as List?)
            ?.map((p) => FhirAttachment.fromJson(p as Map<String, dynamic>))
            .toList(),
        communication: (json['communication'] as List?)
            ?.map((c) => FhirPatientCommunication.fromJson(c as Map<String, dynamic>))
            .toList(),
        managingOrganization: json['managingOrganization'] != null
            ? FhirReference.fromJson(json['managingOrganization'] as Map<String, dynamic>)
            : null,
      );
}

/// Patient.communication backbone element
class FhirPatientCommunication {
  final FhirCodeableConcept language;
  final bool? preferred;

  const FhirPatientCommunication({required this.language, this.preferred});

  Map<String, dynamic> toJson() => {
        'language': language.toJson(),
        if (preferred != null) 'preferred': preferred,
      };

  factory FhirPatientCommunication.fromJson(Map<String, dynamic> json) =>
      FhirPatientCommunication(
        language: FhirCodeableConcept.fromJson(json['language'] as Map<String, dynamic>),
        preferred: json['preferred'] as bool?,
      );
}
