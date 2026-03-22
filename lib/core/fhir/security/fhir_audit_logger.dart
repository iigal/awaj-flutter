/// FHIR Audit Logger
/// Creates FHIR R5 AuditEvent resources for all data access.
/// Required for HIPAA compliance — tracks who accessed what, when, and why.
library;

import 'package:awaj/core/fhir/fhir_config.dart';
import 'package:awaj/core/fhir/fhir_constants.dart';
import 'package:awaj/core/fhir/models/fhir_audit_event.dart';
import 'package:awaj/core/fhir/models/fhir_types.dart';
import 'package:awaj/core/fhir/store/fhir_local_store.dart';

class FhirAuditLogger {
  final FhirLocalStore _store;

  FhirAuditLogger({required FhirLocalStore store}) : _store = store;

  /// Log a data access event
  Future<void> log({
    required String action, // C, R, U, D, E
    required String resourceType,
    required String resourceId,
    required String patientId,
    String? description,
    String outcome = 'success',
  }) async {
    if (!FhirConfig.enableAuditLogging) return;

    final now = DateTime.now().toUtc().toIso8601String();
    final auditEvent = FhirAuditEvent(
      id: 'audit-${DateTime.now().millisecondsSinceEpoch}',
      code: FhirCoding(
        system: 'http://terminology.hl7.org/CodeSystem/audit-event-type',
        code: 'rest',
        display: 'RESTful Operation',
      ),
      action: action,
      recorded: now,
      outcome: outcome,
      agent: [
        FhirAuditEventAgent(
          who: FhirReference(
            reference: 'Patient/$patientId',
            type: FhirResourceType.patient,
          ),
          requestor: true,
        ),
      ],
      source: FhirAuditEventSource(
        observer: const FhirReference(
          reference: 'Device/awaj-flutter-app',
          display: 'Awaj Flutter Application',
        ),
        type: [
          const FhirCoding(
            system: 'http://terminology.hl7.org/CodeSystem/security-source-type',
            code: '1', // User Device
            display: 'User Device',
          ),
        ],
      ),
      entity: [
        FhirAuditEventEntity(
          what: FhirReference(
            reference: '$resourceType/$resourceId',
            type: resourceType,
          ),
          description: description,
        ),
      ],
    );

    // Store locally — sync to server during background sync
    await _store.save(
      FhirResourceType.auditEvent,
      auditEvent.id!,
      auditEvent.toJson(),
      syncStatus: SyncStatus.pending,
    );
  }

  /// Log a login event
  Future<void> logLogin(String patientId, {bool success = true}) async {
    await log(
      action: FhirAuditAction.execute,
      resourceType: FhirResourceType.patient,
      resourceId: patientId,
      patientId: patientId,
      description: 'User login ${success ? 'successful' : 'failed'}',
      outcome: success ? 'success' : 'serious-failure',
    );
  }

  /// Log a logout event
  Future<void> logLogout(String patientId) async {
    await log(
      action: FhirAuditAction.execute,
      resourceType: FhirResourceType.patient,
      resourceId: patientId,
      patientId: patientId,
      description: 'User logout',
    );
  }

  /// Log a data read event
  Future<void> logRead(String resourceType, String resourceId, String patientId) async {
    await log(
      action: FhirAuditAction.read,
      resourceType: resourceType,
      resourceId: resourceId,
      patientId: patientId,
    );
  }

  /// Log a data create event
  Future<void> logCreate(String resourceType, String resourceId, String patientId) async {
    await log(
      action: FhirAuditAction.create,
      resourceType: resourceType,
      resourceId: resourceId,
      patientId: patientId,
    );
  }

  /// Log a data update event
  Future<void> logUpdate(String resourceType, String resourceId, String patientId) async {
    await log(
      action: FhirAuditAction.update,
      resourceType: resourceType,
      resourceId: resourceId,
      patientId: patientId,
    );
  }

  /// Get all audit logs for a patient
  Future<List<FhirAuditEvent>> getAuditLogs(String patientId) async {
    final all = await _store.listByType(FhirResourceType.auditEvent);
    return all
        .map((r) => FhirAuditEvent.fromJson(r.resource))
        .where((e) => e.agent.any((a) => a.who?.reference == 'Patient/$patientId'))
        .toList();
  }
}
