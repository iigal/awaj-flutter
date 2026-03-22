/// Maps between FHIR R5 Communication and app complaint/announcement models.
library;

import 'package:awaj/core/fhir/fhir_constants.dart';
import 'package:awaj/core/fhir/models/fhir_communication.dart';
import 'package:awaj/core/fhir/models/fhir_types.dart';

/// Maps app complaints ↔ FHIR Communication resources
class CommunicationMapper {
  CommunicationMapper._();

  /// Create a FHIR Communication for a complaint
  static FhirCommunication complaintToFhir({
    required String title,
    required String description,
    required String patientId,
    String? categoryId,
    String? status,
    List<String>? imageUrls,
  }) {
    return FhirCommunication(
      status: FhirCommunicationStatus.fromAppStatus(status ?? 'pending'),
      category: [
        FhirCodeableConcept(
          coding: [
            FhirCoding(
              system: FhirCommunicationCategory.system,
              code: FhirCommunicationCategory.complaint,
              display: 'Complaint',
            ),
          ],
        ),
        if (categoryId != null)
          FhirCodeableConcept(
            coding: [
              FhirCoding(
                system: 'urn:awaj:complaint-category',
                code: categoryId,
              ),
            ],
          ),
      ],
      subject: FhirReference(
        reference: 'Patient/$patientId',
        type: FhirResourceType.patient,
      ),
      sender: FhirReference(
        reference: 'Patient/$patientId',
        type: FhirResourceType.patient,
      ),
      payload: [
        // Title as first payload
        FhirCommunicationPayload(contentString: title),
        // Description as second payload
        FhirCommunicationPayload(contentString: description),
        // Images as attachments
        ...?imageUrls?.map((url) => FhirCommunicationPayload(
              contentAttachment: FhirAttachment(
                contentType: 'image/jpeg',
                url: url,
              ),
            )),
      ],
      sent: DateTime.now().toUtc().toIso8601String(),
    );
  }

  /// Create a FHIR Communication for a comment (threaded via partOf)
  static FhirCommunication commentToFhir({
    required String message,
    required String patientId,
    required String parentCommunicationId,
    String? replyToId,
  }) {
    return FhirCommunication(
      status: FhirCommunicationStatus.completed,
      category: [
        FhirCodeableConcept(
          coding: [
            FhirCoding(
              system: FhirCommunicationCategory.system,
              code: FhirCommunicationCategory.notification,
              display: 'Comment',
            ),
          ],
        ),
      ],
      subject: FhirReference(reference: 'Patient/$patientId'),
      sender: FhirReference(reference: 'Patient/$patientId'),
      partOf: [
        FhirReference(reference: 'Communication/$parentCommunicationId'),
        if (replyToId != null)
          FhirReference(reference: 'Communication/$replyToId'),
      ],
      payload: [
        FhirCommunicationPayload(contentString: message),
      ],
      sent: DateTime.now().toUtc().toIso8601String(),
    );
  }

  /// Create a FHIR Communication for an announcement
  static FhirCommunication announcementToFhir({
    required String title,
    required String content,
    String? summary,
    List<String>? priority,
  }) {
    return FhirCommunication(
      status: FhirCommunicationStatus.completed,
      category: [
        FhirCodeableConcept(
          coding: [
            FhirCoding(
              system: FhirCommunicationCategory.system,
              code: FhirCommunicationCategory.announcement,
              display: 'Announcement',
            ),
          ],
        ),
      ],
      priority: priority != null && priority.isNotEmpty
          ? FhirCodeableConcept(text: priority.join(', '))
          : null,
      topic: [
        FhirCodeableConcept(text: title),
      ],
      payload: [
        FhirCommunicationPayload(contentString: content),
        if (summary != null)
          FhirCommunicationPayload(contentString: summary),
      ],
      sent: DateTime.now().toUtc().toIso8601String(),
    );
  }

  /// Extract complaint data from a FHIR Communication
  static Map<String, dynamic> complaintFromFhir(FhirCommunication comm) {
    final payloads = comm.payload ?? [];
    return {
      'id': comm.id,
      'title': payloads.isNotEmpty ? payloads.first.contentString : '',
      'description': payloads.length > 1 ? payloads[1].contentString : '',
      'status': FhirCommunicationStatus.toAppStatus(comm.status),
      'complaintBy': comm.sender?.reference?.replaceFirst('Patient/', ''),
      'images': comm.attachments.map((a) => a.url).where((u) => u != null).toList(),
      'created': comm.sent,
      'updated': comm.meta?.lastUpdated ?? comm.sent,
    };
  }
}
