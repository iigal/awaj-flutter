/// FHIR R5 Location Resource
/// Used for: health facilities, hospitals, clinics
/// See: https://hl7.org/fhir/R5/location.html
library;

import 'fhir_types.dart';

class FhirLocation {
  final String resourceType;
  final String? id;
  final FhirMeta? meta;
  final List<FhirIdentifier>? identifier;
  final String? status; // active | suspended | inactive
  final String? name;
  final List<String>? alias;
  final String? description;
  final FhirCodeableConcept? mode; // instance | kind
  final List<FhirCodeableConcept>? type;
  final List<FhirContactPoint>? telecom;
  final FhirAddress? address;
  final FhirPosition? position;
  final FhirReference? managingOrganization;
  final FhirReference? partOf; // parent Location
  final List<FhirLocationHoursOfOperation>? hoursOfOperation;

  const FhirLocation({
    this.resourceType = 'Location',
    this.id,
    this.meta,
    this.identifier,
    this.status,
    this.name,
    this.alias,
    this.description,
    this.mode,
    this.type,
    this.telecom,
    this.address,
    this.position,
    this.managingOrganization,
    this.partOf,
    this.hoursOfOperation,
  });

  /// Primary phone
  String? get phoneNumber => telecom
      ?.where((t) => t.system == 'phone')
      .firstOrNull
      ?.value;

  /// Primary email
  String? get emailAddress => telecom
      ?.where((t) => t.system == 'email')
      .firstOrNull
      ?.value;

  Map<String, dynamic> toJson() => {
        'resourceType': resourceType,
        if (id != null) 'id': id,
        if (meta != null) 'meta': meta!.toJson(),
        if (identifier != null) 'identifier': identifier!.map((i) => i.toJson()).toList(),
        if (status != null) 'status': status,
        if (name != null) 'name': name,
        if (alias != null) 'alias': alias,
        if (description != null) 'description': description,
        if (mode != null) 'mode': mode!.toJson(),
        if (type != null) 'type': type!.map((t) => t.toJson()).toList(),
        if (telecom != null) 'telecom': telecom!.map((t) => t.toJson()).toList(),
        if (address != null) 'address': address!.toJson(),
        if (position != null) 'position': position!.toJson(),
        if (managingOrganization != null) 'managingOrganization': managingOrganization!.toJson(),
        if (partOf != null) 'partOf': partOf!.toJson(),
        if (hoursOfOperation != null)
          'hoursOfOperation': hoursOfOperation!.map((h) => h.toJson()).toList(),
      };

  factory FhirLocation.fromJson(Map<String, dynamic> json) => FhirLocation(
        id: json['id'] as String?,
        meta: json['meta'] != null ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>) : null,
        identifier: (json['identifier'] as List?)
            ?.map((i) => FhirIdentifier.fromJson(i as Map<String, dynamic>))
            .toList(),
        status: json['status'] as String?,
        name: json['name'] as String?,
        alias: (json['alias'] as List?)?.cast<String>(),
        description: json['description'] as String?,
        mode: json['mode'] != null
            ? FhirCodeableConcept.fromJson(json['mode'] as Map<String, dynamic>)
            : null,
        type: (json['type'] as List?)
            ?.map((t) => FhirCodeableConcept.fromJson(t as Map<String, dynamic>))
            .toList(),
        telecom: (json['telecom'] as List?)
            ?.map((t) => FhirContactPoint.fromJson(t as Map<String, dynamic>))
            .toList(),
        address: json['address'] != null
            ? FhirAddress.fromJson(json['address'] as Map<String, dynamic>)
            : null,
        position: json['position'] != null
            ? FhirPosition.fromJson(json['position'] as Map<String, dynamic>)
            : null,
        managingOrganization: json['managingOrganization'] != null
            ? FhirReference.fromJson(json['managingOrganization'] as Map<String, dynamic>)
            : null,
        partOf: json['partOf'] != null
            ? FhirReference.fromJson(json['partOf'] as Map<String, dynamic>)
            : null,
        hoursOfOperation: (json['hoursOfOperation'] as List?)
            ?.map((h) => FhirLocationHoursOfOperation.fromJson(h as Map<String, dynamic>))
            .toList(),
      );
}

/// Location.hoursOfOperation backbone element
class FhirLocationHoursOfOperation {
  final List<String>? daysOfWeek; // mon | tue | wed | thu | fri | sat | sun
  final bool? allDay;
  final String? openingTime;
  final String? closingTime;

  const FhirLocationHoursOfOperation({
    this.daysOfWeek,
    this.allDay,
    this.openingTime,
    this.closingTime,
  });

  Map<String, dynamic> toJson() => {
        if (daysOfWeek != null) 'daysOfWeek': daysOfWeek,
        if (allDay != null) 'allDay': allDay,
        if (openingTime != null) 'openingTime': openingTime,
        if (closingTime != null) 'closingTime': closingTime,
      };

  factory FhirLocationHoursOfOperation.fromJson(Map<String, dynamic> json) =>
      FhirLocationHoursOfOperation(
        daysOfWeek: (json['daysOfWeek'] as List?)?.cast<String>(),
        allDay: json['allDay'] as bool?,
        openingTime: json['openingTime'] as String?,
        closingTime: json['closingTime'] as String?,
      );
}
