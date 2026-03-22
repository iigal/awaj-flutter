import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_facility_model.freezed.dart';
part 'health_facility_model.g.dart';

@freezed
abstract class HealthFacility with _$HealthFacility {
  const factory HealthFacility({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "href") String? href,
    @JsonKey(name: "uuid") String? uuid,
    @JsonKey(name: "active") String? active,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "coordinates") Coordinates? coordinates,
    @JsonKey(name: "identifiers") Identifiers? identifiers,
    @JsonKey(name: "properties") Properties? properties,
  }) = _HealthFacility;

  factory HealthFacility.fromJson(Map<String, dynamic> json) => _$HealthFacilityFromJson(json);
}

@freezed
abstract class Coordinates with _$Coordinates {
  const factory Coordinates({
    @JsonKey(name: "latitude") String? latitude,
    @JsonKey(name: "longitude") String? longitude,
  }) = _Coordinates;

  factory Coordinates.fromJson(Map<String, dynamic> json) => _$CoordinatesFromJson(json);
}

@freezed
abstract class Identifiers with _$Identifiers {
  const factory Identifiers({
    @JsonKey(name: "iid") String? iid,
    @JsonKey(name: "agency") String? agency,
  }) = _Identifiers;

  factory Identifiers.fromJson(Map<String, dynamic> json) => _$IdentifiersFromJson(json);
}

@freezed
abstract class Properties with _$Properties {
  const factory Properties({
    @JsonKey(name: "hfCode") int? hfCode,
    @JsonKey(name: "type") int? type,
    @JsonKey(name: "Health_facility_Type") HealthFacilityType? healthFacilityType,
    @JsonKey(name: "authlevel") String? authlevel,
    @JsonKey(name: "ftype") int? ftype,
    @JsonKey(name: "opstatus") String? opstatus,
    @JsonKey(name: "internet") String? internet,
    @JsonKey(name: "ren_date") String? renDate,
    @JsonKey(name: "sectioned") dynamic sectioned,
    @JsonKey(name: "functional") int? functional,
    @JsonKey(name: "icu_sectioned") dynamic icuSectioned,
    @JsonKey(name: "icu_functional") dynamic icuFunctional,
    @JsonKey(name: "ventilator_sectioned") dynamic ventilatorSectioned,
    @JsonKey(name: "ventilator_functional") dynamic ventilatorFunctional,
    @JsonKey(name: "province") Province? province,
    @JsonKey(name: "district") District? district,
    @JsonKey(name: "municipality") Municipality? municipality,
    @JsonKey(name: "ward") int? ward,
    @JsonKey(name: "estd_date") String? estdDate,
    @JsonKey(name: "validity") String? validity,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "telephone") String? telephone,
    @JsonKey(name: "oxygen") String? oxygen,
    @JsonKey(name: "ambulance") String? ambulance,
    @JsonKey(name: "concentrator") String? concentrator,
    @JsonKey(name: "cylinder") String? cylinder,
    @JsonKey(name: "ehs") String? ehs,
    @JsonKey(name: "geriatrics") String? geriatrics,
    @JsonKey(name: "insurance") String? insurance,
    @JsonKey(name: "ocmc") String? ocmc,
    @JsonKey(name: "pharmacy") String? pharmacy,
    @JsonKey(name: "plant_capacity") String? plantCapacity,
    @JsonKey(name: "ssu") String? ssu,
    @JsonKey(name: "contact_person") String? contactPerson,
    @JsonKey(name: "contact_person_mobile") String? contactPersonMobile,
    @JsonKey(name: "ambulance_category") String? ambulanceCategory,
    @JsonKey(name: "ambulance_contact") String? ambulanceContact,
    @JsonKey(name: "hdu_functional") dynamic hduFunctional,
    @JsonKey(name: "hdu_sectioned") dynamic hduSectioned,
    @JsonKey(name: "nicu_functional") dynamic nicuFunctional,
    @JsonKey(name: "nicu_sectioned") dynamic nicuSectioned,
    @JsonKey(name: "org_source") dynamic orgSource,
    @JsonKey(name: "building_cost") dynamic buildingCost,
    @JsonKey(name: "device_cost") dynamic deviceCost,
    @JsonKey(name: "est_income") dynamic estIncome,
    @JsonKey(name: "loan_org") dynamic loanOrg,
    @JsonKey(name: "other_source") dynamic otherSource,
    @JsonKey(name: "property_source") dynamic propertySource,
    @JsonKey(name: "workforce_cost") dynamic workforceCost,
    @JsonKey(name: "approvedate") DateTime? approvedate,
    @JsonKey(name: "approveby") String? approveby,
    @JsonKey(name: "service_type") ServiceType? serviceType,
    @JsonKey(name: "ownership") int? ownership,
    @JsonKey(name: "ownerships") Ownerships? ownerships,
    @JsonKey(name: "level") int? level,
    @JsonKey(name: "health_facility_level") HealthFacilityLevel? healthFacilityLevel,
    @JsonKey(name: "oldlevel") int? oldlevel,
    @JsonKey(name: "building_maps") String? buildingMaps,
    @JsonKey(name: "hf_details") String? hfDetails,
    @JsonKey(name: "iee_certs") dynamic ieeCerts,
    @JsonKey(name: "mem_citizenships") dynamic memCitizenships,
    @JsonKey(name: "org_articles") dynamic orgArticles,
    @JsonKey(name: "org_perms") dynamic orgPerms,
    @JsonKey(name: "reg_orgs") dynamic regOrgs,
    @JsonKey(name: "service_fees") dynamic serviceFees,
    @JsonKey(name: "tax_clears") dynamic taxClears,
    @JsonKey(name: "vat_pans") dynamic vatPans,
    @JsonKey(name: "hcode") dynamic hcode,
    @JsonKey(name: "rtype") dynamic rtype,
  }) = _Properties;

  factory Properties.fromJson(Map<String, dynamic> json) => _$PropertiesFromJson(json);
}

@freezed
abstract class District with _$District {
  const factory District({
    @JsonKey(name: "district_id") String? districtId,
    @JsonKey(name: "district_name") String? districtName,
  }) = _District;

  factory District.fromJson(Map<String, dynamic> json) => _$DistrictFromJson(json);
}

@freezed
abstract class HealthFacilityLevel with _$HealthFacilityLevel {
  const factory HealthFacilityLevel({
    @JsonKey(name: "facility_level_id") String? facilityLevelId,
    @JsonKey(name: "facility_level_code") String? facilityLevelCode,
    @JsonKey(name: "facility_level_name") String? facilityLevelName,
    @JsonKey(name: "facility_level_status") String? facilityLevelStatus,
    @JsonKey(name: "facility_level_parent") String? facilityLevelParent,
    @JsonKey(name: "facility_level_types") String? facilityLevelTypes,
  }) = _HealthFacilityLevel;

  factory HealthFacilityLevel.fromJson(Map<String, dynamic> json) => _$HealthFacilityLevelFromJson(json);
}

@freezed
abstract class HealthFacilityType with _$HealthFacilityType {
  const factory HealthFacilityType({
    @JsonKey(name: "hftype_id") String? hftypeId,
    @JsonKey(name: "hftype_code") String? hftypeCode,
    @JsonKey(name: "hftype_name") String? hftypeName,
  }) = _HealthFacilityType;

  factory HealthFacilityType.fromJson(Map<String, dynamic> json) => _$HealthFacilityTypeFromJson(json);
}

@freezed
abstract class Municipality with _$Municipality {
  const factory Municipality({
    @JsonKey(name: "municipality_id") String? municipalityId,
    @JsonKey(name: "municipality_name") String? municipalityName,
  }) = _Municipality;

  factory Municipality.fromJson(Map<String, dynamic> json) => _$MunicipalityFromJson(json);
}

@freezed
abstract class Ownerships with _$Ownerships {
  const factory Ownerships({
    @JsonKey(name: "ownership_id") String? ownershipId,
    @JsonKey(name: "ownership_name") String? ownershipName,
    @JsonKey(name: "ownership_code") String? ownershipCode,
    @JsonKey(name: "ownership_status") String? ownershipStatus,
  }) = _Ownerships;

  factory Ownerships.fromJson(Map<String, dynamic> json) => _$OwnershipsFromJson(json);
}

@freezed
abstract class Province with _$Province {
  const factory Province({
    @JsonKey(name: "province_id") String? provinceId,
    @JsonKey(name: "province_name") String? provinceName,
  }) = _Province;

  factory Province.fromJson(Map<String, dynamic> json) => _$ProvinceFromJson(json);
}

@freezed
abstract class ServiceType with _$ServiceType {
  const factory ServiceType({
    @JsonKey(name: "ftype_id") String? ftypeId,
    @JsonKey(name: "ftype_code") String? ftypeCode,
    @JsonKey(name: "ftype_name") String? ftypeName,
    @JsonKey(name: "ftype_status") String? ftypeStatus,
  }) = _ServiceType;

  factory ServiceType.fromJson(Map<String, dynamic> json) => _$ServiceTypeFromJson(json);
}
