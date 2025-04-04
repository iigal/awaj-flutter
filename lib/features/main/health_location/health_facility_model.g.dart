// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_facility_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HealthFacilityImpl _$$HealthFacilityImplFromJson(Map<String, dynamic> json) =>
    _$HealthFacilityImpl(
      name: json['name'] as String?,
      href: json['href'] as String?,
      uuid: json['uuid'] as String?,
      active: json['active'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      coordinates: json['coordinates'] == null
          ? null
          : Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
      identifiers: json['identifiers'] == null
          ? null
          : Identifiers.fromJson(json['identifiers'] as Map<String, dynamic>),
      properties: json['properties'] == null
          ? null
          : Properties.fromJson(json['properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HealthFacilityImplToJson(
        _$HealthFacilityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'href': instance.href,
      'uuid': instance.uuid,
      'active': instance.active,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'coordinates': instance.coordinates,
      'identifiers': instance.identifiers,
      'properties': instance.properties,
    };

_$CoordinatesImpl _$$CoordinatesImplFromJson(Map<String, dynamic> json) =>
    _$CoordinatesImpl(
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
    );

Map<String, dynamic> _$$CoordinatesImplToJson(_$CoordinatesImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$IdentifiersImpl _$$IdentifiersImplFromJson(Map<String, dynamic> json) =>
    _$IdentifiersImpl(
      iid: json['iid'] as String?,
      agency: json['agency'] as String?,
    );

Map<String, dynamic> _$$IdentifiersImplToJson(_$IdentifiersImpl instance) =>
    <String, dynamic>{
      'iid': instance.iid,
      'agency': instance.agency,
    };

_$PropertiesImpl _$$PropertiesImplFromJson(Map<String, dynamic> json) =>
    _$PropertiesImpl(
      hfCode: (json['hfCode'] as num?)?.toInt(),
      type: (json['type'] as num?)?.toInt(),
      healthFacilityType: json['Health_facility_Type'] == null
          ? null
          : HealthFacilityType.fromJson(
              json['Health_facility_Type'] as Map<String, dynamic>),
      authlevel: json['authlevel'] as String?,
      ftype: (json['ftype'] as num?)?.toInt(),
      opstatus: json['opstatus'] as String?,
      internet: json['internet'] as String?,
      renDate: json['ren_date'] as String?,
      sectioned: json['sectioned'],
      functional: (json['functional'] as num?)?.toInt(),
      icuSectioned: json['icu_sectioned'],
      icuFunctional: json['icu_functional'],
      ventilatorSectioned: json['ventilator_sectioned'],
      ventilatorFunctional: json['ventilator_functional'],
      province: json['province'] == null
          ? null
          : Province.fromJson(json['province'] as Map<String, dynamic>),
      district: json['district'] == null
          ? null
          : District.fromJson(json['district'] as Map<String, dynamic>),
      municipality: json['municipality'] == null
          ? null
          : Municipality.fromJson(json['municipality'] as Map<String, dynamic>),
      ward: (json['ward'] as num?)?.toInt(),
      estdDate: json['estd_date'] as String?,
      validity: json['validity'] as String?,
      email: json['email'] as String?,
      telephone: json['telephone'] as String?,
      oxygen: json['oxygen'] as String?,
      ambulance: json['ambulance'] as String?,
      concentrator: json['concentrator'] as String?,
      cylinder: json['cylinder'] as String?,
      ehs: json['ehs'] as String?,
      geriatrics: json['geriatrics'] as String?,
      insurance: json['insurance'] as String?,
      ocmc: json['ocmc'] as String?,
      pharmacy: json['pharmacy'] as String?,
      plantCapacity: json['plant_capacity'] as String?,
      ssu: json['ssu'] as String?,
      contactPerson: json['contact_person'] as String?,
      contactPersonMobile: json['contact_person_mobile'] as String?,
      ambulanceCategory: json['ambulance_category'] as String?,
      ambulanceContact: json['ambulance_contact'] as String?,
      hduFunctional: json['hdu_functional'],
      hduSectioned: json['hdu_sectioned'],
      nicuFunctional: json['nicu_functional'],
      nicuSectioned: json['nicu_sectioned'],
      orgSource: json['org_source'],
      buildingCost: json['building_cost'],
      deviceCost: json['device_cost'],
      estIncome: json['est_income'],
      loanOrg: json['loan_org'],
      otherSource: json['other_source'],
      propertySource: json['property_source'],
      workforceCost: json['workforce_cost'],
      approvedate: json['approvedate'] == null
          ? null
          : DateTime.parse(json['approvedate'] as String),
      approveby: json['approveby'] as String?,
      serviceType: json['service_type'] == null
          ? null
          : ServiceType.fromJson(json['service_type'] as Map<String, dynamic>),
      ownership: (json['ownership'] as num?)?.toInt(),
      ownerships: json['ownerships'] == null
          ? null
          : Ownerships.fromJson(json['ownerships'] as Map<String, dynamic>),
      level: (json['level'] as num?)?.toInt(),
      healthFacilityLevel: json['health_facility_level'] == null
          ? null
          : HealthFacilityLevel.fromJson(
              json['health_facility_level'] as Map<String, dynamic>),
      oldlevel: (json['oldlevel'] as num?)?.toInt(),
      buildingMaps: json['building_maps'] as String?,
      hfDetails: json['hf_details'] as String?,
      ieeCerts: json['iee_certs'],
      memCitizenships: json['mem_citizenships'],
      orgArticles: json['org_articles'],
      orgPerms: json['org_perms'],
      regOrgs: json['reg_orgs'],
      serviceFees: json['service_fees'],
      taxClears: json['tax_clears'],
      vatPans: json['vat_pans'],
      hcode: json['hcode'],
      rtype: json['rtype'],
    );

Map<String, dynamic> _$$PropertiesImplToJson(_$PropertiesImpl instance) =>
    <String, dynamic>{
      'hfCode': instance.hfCode,
      'type': instance.type,
      'Health_facility_Type': instance.healthFacilityType,
      'authlevel': instance.authlevel,
      'ftype': instance.ftype,
      'opstatus': instance.opstatus,
      'internet': instance.internet,
      'ren_date': instance.renDate,
      'sectioned': instance.sectioned,
      'functional': instance.functional,
      'icu_sectioned': instance.icuSectioned,
      'icu_functional': instance.icuFunctional,
      'ventilator_sectioned': instance.ventilatorSectioned,
      'ventilator_functional': instance.ventilatorFunctional,
      'province': instance.province,
      'district': instance.district,
      'municipality': instance.municipality,
      'ward': instance.ward,
      'estd_date': instance.estdDate,
      'validity': instance.validity,
      'email': instance.email,
      'telephone': instance.telephone,
      'oxygen': instance.oxygen,
      'ambulance': instance.ambulance,
      'concentrator': instance.concentrator,
      'cylinder': instance.cylinder,
      'ehs': instance.ehs,
      'geriatrics': instance.geriatrics,
      'insurance': instance.insurance,
      'ocmc': instance.ocmc,
      'pharmacy': instance.pharmacy,
      'plant_capacity': instance.plantCapacity,
      'ssu': instance.ssu,
      'contact_person': instance.contactPerson,
      'contact_person_mobile': instance.contactPersonMobile,
      'ambulance_category': instance.ambulanceCategory,
      'ambulance_contact': instance.ambulanceContact,
      'hdu_functional': instance.hduFunctional,
      'hdu_sectioned': instance.hduSectioned,
      'nicu_functional': instance.nicuFunctional,
      'nicu_sectioned': instance.nicuSectioned,
      'org_source': instance.orgSource,
      'building_cost': instance.buildingCost,
      'device_cost': instance.deviceCost,
      'est_income': instance.estIncome,
      'loan_org': instance.loanOrg,
      'other_source': instance.otherSource,
      'property_source': instance.propertySource,
      'workforce_cost': instance.workforceCost,
      'approvedate': instance.approvedate?.toIso8601String(),
      'approveby': instance.approveby,
      'service_type': instance.serviceType,
      'ownership': instance.ownership,
      'ownerships': instance.ownerships,
      'level': instance.level,
      'health_facility_level': instance.healthFacilityLevel,
      'oldlevel': instance.oldlevel,
      'building_maps': instance.buildingMaps,
      'hf_details': instance.hfDetails,
      'iee_certs': instance.ieeCerts,
      'mem_citizenships': instance.memCitizenships,
      'org_articles': instance.orgArticles,
      'org_perms': instance.orgPerms,
      'reg_orgs': instance.regOrgs,
      'service_fees': instance.serviceFees,
      'tax_clears': instance.taxClears,
      'vat_pans': instance.vatPans,
      'hcode': instance.hcode,
      'rtype': instance.rtype,
    };

_$DistrictImpl _$$DistrictImplFromJson(Map<String, dynamic> json) =>
    _$DistrictImpl(
      districtId: json['district_id'] as String?,
      districtName: json['district_name'] as String?,
    );

Map<String, dynamic> _$$DistrictImplToJson(_$DistrictImpl instance) =>
    <String, dynamic>{
      'district_id': instance.districtId,
      'district_name': instance.districtName,
    };

_$HealthFacilityLevelImpl _$$HealthFacilityLevelImplFromJson(
        Map<String, dynamic> json) =>
    _$HealthFacilityLevelImpl(
      facilityLevelId: json['facility_level_id'] as String?,
      facilityLevelCode: json['facility_level_code'] as String?,
      facilityLevelName: json['facility_level_name'] as String?,
      facilityLevelStatus: json['facility_level_status'] as String?,
      facilityLevelParent: json['facility_level_parent'] as String?,
      facilityLevelTypes: json['facility_level_types'] as String?,
    );

Map<String, dynamic> _$$HealthFacilityLevelImplToJson(
        _$HealthFacilityLevelImpl instance) =>
    <String, dynamic>{
      'facility_level_id': instance.facilityLevelId,
      'facility_level_code': instance.facilityLevelCode,
      'facility_level_name': instance.facilityLevelName,
      'facility_level_status': instance.facilityLevelStatus,
      'facility_level_parent': instance.facilityLevelParent,
      'facility_level_types': instance.facilityLevelTypes,
    };

_$HealthFacilityTypeImpl _$$HealthFacilityTypeImplFromJson(
        Map<String, dynamic> json) =>
    _$HealthFacilityTypeImpl(
      hftypeId: json['hftype_id'] as String?,
      hftypeCode: json['hftype_code'] as String?,
      hftypeName: json['hftype_name'] as String?,
    );

Map<String, dynamic> _$$HealthFacilityTypeImplToJson(
        _$HealthFacilityTypeImpl instance) =>
    <String, dynamic>{
      'hftype_id': instance.hftypeId,
      'hftype_code': instance.hftypeCode,
      'hftype_name': instance.hftypeName,
    };

_$MunicipalityImpl _$$MunicipalityImplFromJson(Map<String, dynamic> json) =>
    _$MunicipalityImpl(
      municipalityId: json['municipality_id'] as String?,
      municipalityName: json['municipality_name'] as String?,
    );

Map<String, dynamic> _$$MunicipalityImplToJson(_$MunicipalityImpl instance) =>
    <String, dynamic>{
      'municipality_id': instance.municipalityId,
      'municipality_name': instance.municipalityName,
    };

_$OwnershipsImpl _$$OwnershipsImplFromJson(Map<String, dynamic> json) =>
    _$OwnershipsImpl(
      ownershipId: json['ownership_id'] as String?,
      ownershipName: json['ownership_name'] as String?,
      ownershipCode: json['ownership_code'] as String?,
      ownershipStatus: json['ownership_status'] as String?,
    );

Map<String, dynamic> _$$OwnershipsImplToJson(_$OwnershipsImpl instance) =>
    <String, dynamic>{
      'ownership_id': instance.ownershipId,
      'ownership_name': instance.ownershipName,
      'ownership_code': instance.ownershipCode,
      'ownership_status': instance.ownershipStatus,
    };

_$ProvinceImpl _$$ProvinceImplFromJson(Map<String, dynamic> json) =>
    _$ProvinceImpl(
      provinceId: json['province_id'] as String?,
      provinceName: json['province_name'] as String?,
    );

Map<String, dynamic> _$$ProvinceImplToJson(_$ProvinceImpl instance) =>
    <String, dynamic>{
      'province_id': instance.provinceId,
      'province_name': instance.provinceName,
    };

_$ServiceTypeImpl _$$ServiceTypeImplFromJson(Map<String, dynamic> json) =>
    _$ServiceTypeImpl(
      ftypeId: json['ftype_id'] as String?,
      ftypeCode: json['ftype_code'] as String?,
      ftypeName: json['ftype_name'] as String?,
      ftypeStatus: json['ftype_status'] as String?,
    );

Map<String, dynamic> _$$ServiceTypeImplToJson(_$ServiceTypeImpl instance) =>
    <String, dynamic>{
      'ftype_id': instance.ftypeId,
      'ftype_code': instance.ftypeCode,
      'ftype_name': instance.ftypeName,
      'ftype_status': instance.ftypeStatus,
    };
