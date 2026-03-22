/// Maps between FHIR R5 Location and app health facility models.
library;

import 'package:awaj/core/fhir/models/fhir_location.dart';
import 'package:awaj/core/fhir/models/fhir_types.dart';

class LocationMapper {
  LocationMapper._();

  /// Convert app health facility data → FHIR Location
  static FhirLocation healthFacilityToFhir({
    required String name,
    String? id,
    double? latitude,
    double? longitude,
    String? phone,
    String? email,
    String? facilityType,
    String? district,
    String? municipality,
    String? province,
    String? status,
  }) {
    return FhirLocation(
      id: id,
      status: status ?? 'active',
      name: name,
      type: facilityType != null
          ? [
              FhirCodeableConcept(
                coding: [
                  FhirCoding(
                    system: 'http://terminology.hl7.org/CodeSystem/v3-RoleCode',
                    code: _mapFacilityType(facilityType),
                    display: facilityType,
                  ),
                ],
              ),
            ]
          : null,
      telecom: [
        if (phone != null) FhirContactPoint(system: 'phone', value: phone),
        if (email != null) FhirContactPoint(system: 'email', value: email),
      ],
      address: FhirAddress(
        district: district,
        state: province,
        city: municipality,
        country: 'NP',
      ),
      position: (latitude != null && longitude != null)
          ? FhirPosition(latitude: latitude, longitude: longitude)
          : null,
    );
  }

  /// Extract facility data from FHIR Location
  static Map<String, dynamic> fromFhir(FhirLocation location) {
    return {
      'id': location.id,
      'name': location.name,
      'status': location.status,
      'latitude': location.position?.latitude,
      'longitude': location.position?.longitude,
      'phone': location.phoneNumber,
      'email': location.emailAddress,
      'district': location.address?.district,
      'municipality': location.address?.city,
      'province': location.address?.state,
      'facilityType': location.type?.firstOrNull?.coding?.firstOrNull?.display,
    };
  }

  /// Map app facility type to FHIR RoleCode
  static String _mapFacilityType(String type) {
    switch (type.toLowerCase()) {
      case 'hospital':
        return 'HOSP';
      case 'clinic':
        return 'CLINIC';
      case 'pharmacy':
        return 'PHARM';
      case 'health post':
        return 'PC';
      case 'laboratory':
        return 'HLAB';
      default:
        return 'HU'; // Health unit
    }
  }
}
