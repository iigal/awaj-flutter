/// FHIR R5 Organization Resource
/// Used for: health organizations, government bodies
/// See: https://hl7.org/fhir/R5/organization.html
library;

import 'fhir_types.dart';

class FhirOrganization {
  final String resourceType;
  final String? id;
  final FhirMeta? meta;
  final List<FhirIdentifier>? identifier;
  final bool? active;
  final List<FhirCodeableConcept>? type;
  final String? name;
  final List<String>? alias;
  final List<FhirContactPoint>? telecom;
  final List<FhirAddress>? address;
  final FhirReference? partOf;

  const FhirOrganization({
    this.resourceType = 'Organization',
    this.id,
    this.meta,
    this.identifier,
    this.active,
    this.type,
    this.name,
    this.alias,
    this.telecom,
    this.address,
    this.partOf,
  });

  Map<String, dynamic> toJson() => {
        'resourceType': resourceType,
        if (id != null) 'id': id,
        if (meta != null) 'meta': meta!.toJson(),
        if (identifier != null) 'identifier': identifier!.map((i) => i.toJson()).toList(),
        if (active != null) 'active': active,
        if (type != null) 'type': type!.map((t) => t.toJson()).toList(),
        if (name != null) 'name': name,
        if (alias != null) 'alias': alias,
        if (telecom != null) 'telecom': telecom!.map((t) => t.toJson()).toList(),
        if (address != null) 'address': address!.map((a) => a.toJson()).toList(),
        if (partOf != null) 'partOf': partOf!.toJson(),
      };

  factory FhirOrganization.fromJson(Map<String, dynamic> json) => FhirOrganization(
        id: json['id'] as String?,
        meta: json['meta'] != null ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>) : null,
        identifier: (json['identifier'] as List?)
            ?.map((i) => FhirIdentifier.fromJson(i as Map<String, dynamic>))
            .toList(),
        active: json['active'] as bool?,
        type: (json['type'] as List?)
            ?.map((t) => FhirCodeableConcept.fromJson(t as Map<String, dynamic>))
            .toList(),
        name: json['name'] as String?,
        alias: (json['alias'] as List?)?.cast<String>(),
        telecom: (json['telecom'] as List?)
            ?.map((t) => FhirContactPoint.fromJson(t as Map<String, dynamic>))
            .toList(),
        address: (json['address'] as List?)
            ?.map((a) => FhirAddress.fromJson(a as Map<String, dynamic>))
            .toList(),
        partOf: json['partOf'] != null
            ? FhirReference.fromJson(json['partOf'] as Map<String, dynamic>)
            : null,
      );
}
