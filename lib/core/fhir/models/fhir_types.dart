/// Core FHIR R5 data types used across resources.
/// See: https://hl7.org/fhir/R5/datatypes.html
library;

/// FHIR HumanName
/// See: https://hl7.org/fhir/R5/datatypes.html#HumanName
class FhirHumanName {
  final String? use; // official | usual | temp | nickname | anonymous | old | maiden
  final String? text;
  final String? family;
  final List<String>? given;
  final List<String>? prefix;
  final List<String>? suffix;

  const FhirHumanName({this.use, this.text, this.family, this.given, this.prefix, this.suffix});

  String get displayName {
    if (text != null && text!.isNotEmpty) return text!;
    final parts = <String>[
      ...?prefix,
      ...?given,
      if (family != null) family!,
      ...?suffix,
    ];
    return parts.join(' ');
  }

  Map<String, dynamic> toJson() => {
        if (use != null) 'use': use,
        if (text != null) 'text': text,
        if (family != null) 'family': family,
        if (given != null) 'given': given,
        if (prefix != null) 'prefix': prefix,
        if (suffix != null) 'suffix': suffix,
      };

  factory FhirHumanName.fromJson(Map<String, dynamic> json) => FhirHumanName(
        use: json['use'] as String?,
        text: json['text'] as String?,
        family: json['family'] as String?,
        given: (json['given'] as List?)?.cast<String>(),
        prefix: (json['prefix'] as List?)?.cast<String>(),
        suffix: (json['suffix'] as List?)?.cast<String>(),
      );
}

/// FHIR Identifier
/// See: https://hl7.org/fhir/R5/datatypes.html#Identifier
class FhirIdentifier {
  final String? use; // usual | official | temp | secondary | old
  final String? system;
  final String? value;

  const FhirIdentifier({this.use, this.system, this.value});

  Map<String, dynamic> toJson() => {
        if (use != null) 'use': use,
        if (system != null) 'system': system,
        if (value != null) 'value': value,
      };

  factory FhirIdentifier.fromJson(Map<String, dynamic> json) => FhirIdentifier(
        use: json['use'] as String?,
        system: json['system'] as String?,
        value: json['value'] as String?,
      );
}

/// FHIR ContactPoint (phone, email, etc.)
/// See: https://hl7.org/fhir/R5/datatypes.html#ContactPoint
class FhirContactPoint {
  final String? system; // phone | fax | email | pager | url | sms | other
  final String? value;
  final String? use; // home | work | temp | old | mobile

  const FhirContactPoint({this.system, this.value, this.use});

  Map<String, dynamic> toJson() => {
        if (system != null) 'system': system,
        if (value != null) 'value': value,
        if (use != null) 'use': use,
      };

  factory FhirContactPoint.fromJson(Map<String, dynamic> json) => FhirContactPoint(
        system: json['system'] as String?,
        value: json['value'] as String?,
        use: json['use'] as String?,
      );
}

/// FHIR Address
/// See: https://hl7.org/fhir/R5/datatypes.html#Address
class FhirAddress {
  final String? use; // home | work | temp | old | billing
  final String? type; // postal | physical | both
  final String? text;
  final List<String>? line;
  final String? city;
  final String? district;
  final String? state;
  final String? postalCode;
  final String? country;

  const FhirAddress({
    this.use,
    this.type,
    this.text,
    this.line,
    this.city,
    this.district,
    this.state,
    this.postalCode,
    this.country,
  });

  Map<String, dynamic> toJson() => {
        if (use != null) 'use': use,
        if (type != null) 'type': type,
        if (text != null) 'text': text,
        if (line != null) 'line': line,
        if (city != null) 'city': city,
        if (district != null) 'district': district,
        if (state != null) 'state': state,
        if (postalCode != null) 'postalCode': postalCode,
        if (country != null) 'country': country,
      };

  factory FhirAddress.fromJson(Map<String, dynamic> json) => FhirAddress(
        use: json['use'] as String?,
        type: json['type'] as String?,
        text: json['text'] as String?,
        line: (json['line'] as List?)?.cast<String>(),
        city: json['city'] as String?,
        district: json['district'] as String?,
        state: json['state'] as String?,
        postalCode: json['postalCode'] as String?,
        country: json['country'] as String?,
      );
}

/// FHIR CodeableConcept
/// See: https://hl7.org/fhir/R5/datatypes.html#CodeableConcept
class FhirCodeableConcept {
  final List<FhirCoding>? coding;
  final String? text;

  const FhirCodeableConcept({this.coding, this.text});

  Map<String, dynamic> toJson() => {
        if (coding != null) 'coding': coding!.map((c) => c.toJson()).toList(),
        if (text != null) 'text': text,
      };

  factory FhirCodeableConcept.fromJson(Map<String, dynamic> json) => FhirCodeableConcept(
        coding: (json['coding'] as List?)?.map((c) => FhirCoding.fromJson(c as Map<String, dynamic>)).toList(),
        text: json['text'] as String?,
      );
}

/// FHIR Coding
/// See: https://hl7.org/fhir/R5/datatypes.html#Coding
class FhirCoding {
  final String? system;
  final String? code;
  final String? display;

  const FhirCoding({this.system, this.code, this.display});

  Map<String, dynamic> toJson() => {
        if (system != null) 'system': system,
        if (code != null) 'code': code,
        if (display != null) 'display': display,
      };

  factory FhirCoding.fromJson(Map<String, dynamic> json) => FhirCoding(
        system: json['system'] as String?,
        code: json['code'] as String?,
        display: json['display'] as String?,
      );
}

/// FHIR Reference
/// See: https://hl7.org/fhir/R5/references.html
class FhirReference {
  final String? reference; // e.g. "Patient/123"
  final String? type;
  final String? display;

  const FhirReference({this.reference, this.type, this.display});

  Map<String, dynamic> toJson() => {
        if (reference != null) 'reference': reference,
        if (type != null) 'type': type,
        if (display != null) 'display': display,
      };

  factory FhirReference.fromJson(Map<String, dynamic> json) => FhirReference(
        reference: json['reference'] as String?,
        type: json['type'] as String?,
        display: json['display'] as String?,
      );
}

/// FHIR Position (for Location)
class FhirPosition {
  final double? longitude;
  final double? latitude;
  final double? altitude;

  const FhirPosition({this.longitude, this.latitude, this.altitude});

  Map<String, dynamic> toJson() => {
        if (longitude != null) 'longitude': longitude,
        if (latitude != null) 'latitude': latitude,
        if (altitude != null) 'altitude': altitude,
      };

  factory FhirPosition.fromJson(Map<String, dynamic> json) => FhirPosition(
        longitude: (json['longitude'] as num?)?.toDouble(),
        latitude: (json['latitude'] as num?)?.toDouble(),
        altitude: (json['altitude'] as num?)?.toDouble(),
      );
}

/// FHIR Meta
/// See: https://hl7.org/fhir/R5/resource.html#Meta
class FhirMeta {
  final String? versionId;
  final String? lastUpdated;
  final List<String>? profile;
  final List<FhirCoding>? security;
  final List<FhirCoding>? tag;

  const FhirMeta({this.versionId, this.lastUpdated, this.profile, this.security, this.tag});

  Map<String, dynamic> toJson() => {
        if (versionId != null) 'versionId': versionId,
        if (lastUpdated != null) 'lastUpdated': lastUpdated,
        if (profile != null) 'profile': profile,
        if (security != null) 'security': security!.map((s) => s.toJson()).toList(),
        if (tag != null) 'tag': tag!.map((t) => t.toJson()).toList(),
      };

  factory FhirMeta.fromJson(Map<String, dynamic> json) => FhirMeta(
        versionId: json['versionId'] as String?,
        lastUpdated: json['lastUpdated'] as String?,
        profile: (json['profile'] as List?)?.cast<String>(),
        security: (json['security'] as List?)?.map((s) => FhirCoding.fromJson(s as Map<String, dynamic>)).toList(),
        tag: (json['tag'] as List?)?.map((t) => FhirCoding.fromJson(t as Map<String, dynamic>)).toList(),
      );
}

/// FHIR Attachment
/// See: https://hl7.org/fhir/R5/datatypes.html#Attachment
class FhirAttachment {
  final String? contentType;
  final String? url;
  final String? title;
  final String? data; // base64 encoded
  final int? size;

  const FhirAttachment({this.contentType, this.url, this.title, this.data, this.size});

  Map<String, dynamic> toJson() => {
        if (contentType != null) 'contentType': contentType,
        if (url != null) 'url': url,
        if (title != null) 'title': title,
        if (data != null) 'data': data,
        if (size != null) 'size': size,
      };

  factory FhirAttachment.fromJson(Map<String, dynamic> json) => FhirAttachment(
        contentType: json['contentType'] as String?,
        url: json['url'] as String?,
        title: json['title'] as String?,
        data: json['data'] as String?,
        size: json['size'] as int?,
      );
}
