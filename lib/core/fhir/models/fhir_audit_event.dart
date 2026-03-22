/// FHIR R5 AuditEvent Resource
/// Used for: security audit logging of all data access
/// See: https://hl7.org/fhir/R5/auditevent.html
library;

import 'fhir_types.dart';

class FhirAuditEvent {
  final String resourceType;
  final String? id;
  final FhirMeta? meta;
  final FhirCodeableConcept? category;
  final FhirCoding code; // What was done
  final String action; // C | R | U | D | E
  final String? recorded; // dateTime
  final String? outcome; // success | minor-failure | serious-failure | major-failure
  final List<FhirAuditEventAgent> agent;
  final FhirAuditEventSource source;
  final List<FhirAuditEventEntity>? entity;

  const FhirAuditEvent({
    this.resourceType = 'AuditEvent',
    this.id,
    this.meta,
    this.category,
    required this.code,
    required this.action,
    this.recorded,
    this.outcome,
    required this.agent,
    required this.source,
    this.entity,
  });

  Map<String, dynamic> toJson() => {
        'resourceType': resourceType,
        if (id != null) 'id': id,
        if (meta != null) 'meta': meta!.toJson(),
        if (category != null) 'category': category!.toJson(),
        'code': code.toJson(),
        'action': action,
        if (recorded != null) 'recorded': recorded,
        if (outcome != null) 'outcome': outcome,
        'agent': agent.map((a) => a.toJson()).toList(),
        'source': source.toJson(),
        if (entity != null) 'entity': entity!.map((e) => e.toJson()).toList(),
      };

  factory FhirAuditEvent.fromJson(Map<String, dynamic> json) => FhirAuditEvent(
        id: json['id'] as String?,
        meta: json['meta'] != null ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>) : null,
        category: json['category'] != null
            ? FhirCodeableConcept.fromJson(json['category'] as Map<String, dynamic>)
            : null,
        code: FhirCoding.fromJson(json['code'] as Map<String, dynamic>),
        action: json['action'] as String,
        recorded: json['recorded'] as String?,
        outcome: json['outcome'] as String?,
        agent: (json['agent'] as List)
            .map((a) => FhirAuditEventAgent.fromJson(a as Map<String, dynamic>))
            .toList(),
        source: FhirAuditEventSource.fromJson(json['source'] as Map<String, dynamic>),
        entity: (json['entity'] as List?)
            ?.map((e) => FhirAuditEventEntity.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
}

class FhirAuditEventAgent {
  final FhirReference? who;
  final bool requestor;
  final String? networkString;

  const FhirAuditEventAgent({this.who, required this.requestor, this.networkString});

  Map<String, dynamic> toJson() => {
        if (who != null) 'who': who!.toJson(),
        'requestor': requestor,
        if (networkString != null) 'networkString': networkString,
      };

  factory FhirAuditEventAgent.fromJson(Map<String, dynamic> json) => FhirAuditEventAgent(
        who: json['who'] != null ? FhirReference.fromJson(json['who'] as Map<String, dynamic>) : null,
        requestor: json['requestor'] as bool,
        networkString: json['networkString'] as String?,
      );
}

class FhirAuditEventSource {
  final FhirReference? observer;
  final List<FhirCoding>? type;

  const FhirAuditEventSource({this.observer, this.type});

  Map<String, dynamic> toJson() => {
        if (observer != null) 'observer': observer!.toJson(),
        if (type != null) 'type': type!.map((t) => t.toJson()).toList(),
      };

  factory FhirAuditEventSource.fromJson(Map<String, dynamic> json) => FhirAuditEventSource(
        observer:
            json['observer'] != null ? FhirReference.fromJson(json['observer'] as Map<String, dynamic>) : null,
        type: (json['type'] as List?)?.map((t) => FhirCoding.fromJson(t as Map<String, dynamic>)).toList(),
      );
}

class FhirAuditEventEntity {
  final FhirReference? what;
  final FhirCoding? role;
  final String? description;

  const FhirAuditEventEntity({this.what, this.role, this.description});

  Map<String, dynamic> toJson() => {
        if (what != null) 'what': what!.toJson(),
        if (role != null) 'role': role!.toJson(),
        if (description != null) 'description': description,
      };

  factory FhirAuditEventEntity.fromJson(Map<String, dynamic> json) => FhirAuditEventEntity(
        what: json['what'] != null ? FhirReference.fromJson(json['what'] as Map<String, dynamic>) : null,
        role: json['role'] != null ? FhirCoding.fromJson(json['role'] as Map<String, dynamic>) : null,
        description: json['description'] as String?,
      );
}
