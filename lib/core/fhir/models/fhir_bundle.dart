/// FHIR R5 Bundle Resource
/// Used for: search results, batch operations, transactions
/// See: https://hl7.org/fhir/R5/bundle.html
library;

import 'fhir_types.dart';

class FhirBundle {
  final String resourceType;
  final String? id;
  final FhirMeta? meta;
  final String? type; // document | message | transaction | transaction-response | batch | batch-response | history | searchset | collection | subscription-notification
  final int? total;
  final List<FhirBundleLink>? link;
  final List<FhirBundleEntry>? entry;

  const FhirBundle({
    this.resourceType = 'Bundle',
    this.id,
    this.meta,
    this.type,
    this.total,
    this.link,
    this.entry,
  });

  /// Get the next page URL from link relations
  String? get nextPageUrl => link
      ?.where((l) => l.relation == 'next')
      .firstOrNull
      ?.url;

  /// Get the self URL
  String? get selfUrl => link
      ?.where((l) => l.relation == 'self')
      .firstOrNull
      ?.url;

  Map<String, dynamic> toJson() => {
        'resourceType': resourceType,
        if (id != null) 'id': id,
        if (meta != null) 'meta': meta!.toJson(),
        if (type != null) 'type': type,
        if (total != null) 'total': total,
        if (link != null) 'link': link!.map((l) => l.toJson()).toList(),
        if (entry != null) 'entry': entry!.map((e) => e.toJson()).toList(),
      };

  factory FhirBundle.fromJson(Map<String, dynamic> json) => FhirBundle(
        id: json['id'] as String?,
        meta: json['meta'] != null ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>) : null,
        type: json['type'] as String?,
        total: json['total'] as int?,
        link: (json['link'] as List?)
            ?.map((l) => FhirBundleLink.fromJson(l as Map<String, dynamic>))
            .toList(),
        entry: (json['entry'] as List?)
            ?.map((e) => FhirBundleEntry.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
}

/// Bundle.link backbone element
class FhirBundleLink {
  final String relation;
  final String url;

  const FhirBundleLink({required this.relation, required this.url});

  Map<String, dynamic> toJson() => {'relation': relation, 'url': url};

  factory FhirBundleLink.fromJson(Map<String, dynamic> json) => FhirBundleLink(
        relation: json['relation'] as String,
        url: json['url'] as String,
      );
}

/// Bundle.entry backbone element
class FhirBundleEntry {
  final String? fullUrl;
  final Map<String, dynamic>? resource;
  final FhirBundleEntrySearch? search;
  final FhirBundleEntryRequest? request;
  final FhirBundleEntryResponse? response;

  const FhirBundleEntry({
    this.fullUrl,
    this.resource,
    this.search,
    this.request,
    this.response,
  });

  Map<String, dynamic> toJson() => {
        if (fullUrl != null) 'fullUrl': fullUrl,
        if (resource != null) 'resource': resource,
        if (search != null) 'search': search!.toJson(),
        if (request != null) 'request': request!.toJson(),
        if (response != null) 'response': response!.toJson(),
      };

  factory FhirBundleEntry.fromJson(Map<String, dynamic> json) => FhirBundleEntry(
        fullUrl: json['fullUrl'] as String?,
        resource: json['resource'] as Map<String, dynamic>?,
        search: json['search'] != null
            ? FhirBundleEntrySearch.fromJson(json['search'] as Map<String, dynamic>)
            : null,
        request: json['request'] != null
            ? FhirBundleEntryRequest.fromJson(json['request'] as Map<String, dynamic>)
            : null,
        response: json['response'] != null
            ? FhirBundleEntryResponse.fromJson(json['response'] as Map<String, dynamic>)
            : null,
      );
}

class FhirBundleEntrySearch {
  final String? mode; // match | include | outcome
  final double? score;

  const FhirBundleEntrySearch({this.mode, this.score});

  Map<String, dynamic> toJson() => {
        if (mode != null) 'mode': mode,
        if (score != null) 'score': score,
      };

  factory FhirBundleEntrySearch.fromJson(Map<String, dynamic> json) =>
      FhirBundleEntrySearch(
        mode: json['mode'] as String?,
        score: (json['score'] as num?)?.toDouble(),
      );
}

class FhirBundleEntryRequest {
  final String method; // GET | HEAD | POST | PUT | DELETE | PATCH
  final String url;

  const FhirBundleEntryRequest({required this.method, required this.url});

  Map<String, dynamic> toJson() => {'method': method, 'url': url};

  factory FhirBundleEntryRequest.fromJson(Map<String, dynamic> json) =>
      FhirBundleEntryRequest(
        method: json['method'] as String,
        url: json['url'] as String,
      );
}

class FhirBundleEntryResponse {
  final String status;
  final String? location;
  final String? lastModified;

  const FhirBundleEntryResponse({required this.status, this.location, this.lastModified});

  Map<String, dynamic> toJson() => {
        'status': status,
        if (location != null) 'location': location,
        if (lastModified != null) 'lastModified': lastModified,
      };

  factory FhirBundleEntryResponse.fromJson(Map<String, dynamic> json) =>
      FhirBundleEntryResponse(
        status: json['status'] as String,
        location: json['location'] as String?,
        lastModified: json['lastModified'] as String?,
      );
}
