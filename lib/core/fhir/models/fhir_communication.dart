/// FHIR R5 Communication Resource
/// Used for: complaints, announcements, comments
/// See: https://hl7.org/fhir/R5/communication.html
library;

import 'fhir_types.dart';

class FhirCommunication {
  final String resourceType;
  final String? id;
  final FhirMeta? meta;
  final List<FhirIdentifier>? identifier;
  final String? status; // preparation | in-progress | not-done | on-hold | stopped | completed | entered-in-error | unknown
  final List<FhirCodeableConcept>? category;
  final FhirCodeableConcept? priority;
  final FhirReference? subject; // Patient reference
  final FhirReference? sender;
  final List<FhirReference>? recipient;
  final List<FhirCommunicationPayload>? payload;
  final String? sent; // dateTime
  final String? received; // dateTime
  final List<FhirReference>? basedOn;
  final List<FhirReference>? partOf; // parent Communication (for threaded comments)
  final List<FhirCodeableConcept>? topic;
  final List<FhirAttachment>? _attachments; // extracted from payload for convenience

  const FhirCommunication({
    this.resourceType = 'Communication',
    this.id,
    this.meta,
    this.identifier,
    this.status,
    this.category,
    this.priority,
    this.subject,
    this.sender,
    this.recipient,
    this.payload,
    this.sent,
    this.received,
    this.basedOn,
    this.partOf,
    this.topic,
    List<FhirAttachment>? attachments,
  }) : _attachments = attachments;

  /// Get text content from payload
  String? get textContent {
    for (final p in payload ?? <FhirCommunicationPayload>[]) {
      if (p.contentString != null) return p.contentString;
    }
    return null;
  }

  /// Get all attachments from payload
  List<FhirAttachment> get attachments {
    if (_attachments != null) return _attachments;
    return payload
            ?.where((p) => p.contentAttachment != null)
            .map((p) => p.contentAttachment!)
            .toList() ??
        [];
  }

  /// Check if this is a complaint
  bool get isComplaint => category?.any(
        (c) => c.coding?.any((cd) => cd.code == 'complaint') ?? false,
      ) ??
      false;

  /// Check if this is an announcement
  bool get isAnnouncement => category?.any(
        (c) => c.coding?.any((cd) => cd.code == 'announcement') ?? false,
      ) ??
      false;

  FhirCommunication copyWith({
    String? id,
    FhirMeta? meta,
    List<FhirIdentifier>? identifier,
    String? status,
    List<FhirCodeableConcept>? category,
    FhirCodeableConcept? priority,
    FhirReference? subject,
    FhirReference? sender,
    List<FhirReference>? recipient,
    List<FhirCommunicationPayload>? payload,
    String? sent,
    String? received,
    List<FhirReference>? basedOn,
    List<FhirReference>? partOf,
    List<FhirCodeableConcept>? topic,
  }) =>
      FhirCommunication(
        id: id ?? this.id,
        meta: meta ?? this.meta,
        identifier: identifier ?? this.identifier,
        status: status ?? this.status,
        category: category ?? this.category,
        priority: priority ?? this.priority,
        subject: subject ?? this.subject,
        sender: sender ?? this.sender,
        recipient: recipient ?? this.recipient,
        payload: payload ?? this.payload,
        sent: sent ?? this.sent,
        received: received ?? this.received,
        basedOn: basedOn ?? this.basedOn,
        partOf: partOf ?? this.partOf,
        topic: topic ?? this.topic,
      );

  Map<String, dynamic> toJson() => {
        'resourceType': resourceType,
        if (id != null) 'id': id,
        if (meta != null) 'meta': meta!.toJson(),
        if (identifier != null) 'identifier': identifier!.map((i) => i.toJson()).toList(),
        if (status != null) 'status': status,
        if (category != null) 'category': category!.map((c) => c.toJson()).toList(),
        if (priority != null) 'priority': priority!.toJson(),
        if (subject != null) 'subject': subject!.toJson(),
        if (sender != null) 'sender': sender!.toJson(),
        if (recipient != null) 'recipient': recipient!.map((r) => r.toJson()).toList(),
        if (payload != null) 'payload': payload!.map((p) => p.toJson()).toList(),
        if (sent != null) 'sent': sent,
        if (received != null) 'received': received,
        if (basedOn != null) 'basedOn': basedOn!.map((b) => b.toJson()).toList(),
        if (partOf != null) 'partOf': partOf!.map((p) => p.toJson()).toList(),
        if (topic != null) 'topic': topic!.map((t) => t.toJson()).toList(),
      };

  factory FhirCommunication.fromJson(Map<String, dynamic> json) => FhirCommunication(
        id: json['id'] as String?,
        meta: json['meta'] != null ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>) : null,
        identifier: (json['identifier'] as List?)
            ?.map((i) => FhirIdentifier.fromJson(i as Map<String, dynamic>))
            .toList(),
        status: json['status'] as String?,
        category: (json['category'] as List?)
            ?.map((c) => FhirCodeableConcept.fromJson(c as Map<String, dynamic>))
            .toList(),
        priority: json['priority'] != null
            ? FhirCodeableConcept.fromJson(json['priority'] as Map<String, dynamic>)
            : null,
        subject: json['subject'] != null
            ? FhirReference.fromJson(json['subject'] as Map<String, dynamic>)
            : null,
        sender: json['sender'] != null
            ? FhirReference.fromJson(json['sender'] as Map<String, dynamic>)
            : null,
        recipient: (json['recipient'] as List?)
            ?.map((r) => FhirReference.fromJson(r as Map<String, dynamic>))
            .toList(),
        payload: (json['payload'] as List?)
            ?.map((p) => FhirCommunicationPayload.fromJson(p as Map<String, dynamic>))
            .toList(),
        sent: json['sent'] as String?,
        received: json['received'] as String?,
        basedOn: (json['basedOn'] as List?)
            ?.map((b) => FhirReference.fromJson(b as Map<String, dynamic>))
            .toList(),
        partOf: (json['partOf'] as List?)
            ?.map((p) => FhirReference.fromJson(p as Map<String, dynamic>))
            .toList(),
        topic: (json['topic'] as List?)
            ?.map((t) => FhirCodeableConcept.fromJson(t as Map<String, dynamic>))
            .toList(),
      );
}

/// Communication.payload backbone element
class FhirCommunicationPayload {
  final String? contentString;
  final FhirAttachment? contentAttachment;
  final FhirReference? contentReference;

  const FhirCommunicationPayload({
    this.contentString,
    this.contentAttachment,
    this.contentReference,
  });

  Map<String, dynamic> toJson() => {
        if (contentString != null) 'contentString': contentString,
        if (contentAttachment != null) 'contentAttachment': contentAttachment!.toJson(),
        if (contentReference != null) 'contentReference': contentReference!.toJson(),
      };

  factory FhirCommunicationPayload.fromJson(Map<String, dynamic> json) =>
      FhirCommunicationPayload(
        contentString: json['contentString'] as String?,
        contentAttachment: json['contentAttachment'] != null
            ? FhirAttachment.fromJson(json['contentAttachment'] as Map<String, dynamic>)
            : null,
        contentReference: json['contentReference'] != null
            ? FhirReference.fromJson(json['contentReference'] as Map<String, dynamic>)
            : null,
      );
}
