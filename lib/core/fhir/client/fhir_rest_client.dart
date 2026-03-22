/// FHIR R5 REST Client
/// Implements FHIR RESTful API interactions.
/// See: https://hl7.org/fhir/R5/http.html
library;

import 'dart:convert';

import 'package:awaj/core/fhir/auth/fhir_auth_service.dart';
import 'package:awaj/core/fhir/fhir_config.dart';
import 'package:awaj/core/fhir/models/fhir_bundle.dart';
import 'package:http/http.dart' as http;

/// Exception for FHIR REST operations
class FhirRestException implements Exception {
  final int statusCode;
  final String message;
  final Map<String, dynamic>? operationOutcome;

  const FhirRestException({
    required this.statusCode,
    required this.message,
    this.operationOutcome,
  });

  @override
  String toString() => 'FhirRestException($statusCode): $message';
}

/// FHIR RESTful client supporting standard FHIR interactions.
///
/// Interactions supported:
/// - read: GET [base]/[type]/[id]
/// - search: GET [base]/[type]?params
/// - create: POST [base]/[type]
/// - update: PUT [base]/[type]/[id]
/// - delete: DELETE [base]/[type]/[id]
/// - capabilities: GET [base]/metadata
class FhirRestClient {
  final http.Client _httpClient;
  final FhirAuthService _authService;

  FhirRestClient({
    required FhirAuthService authService,
    http.Client? httpClient,
  })  : _authService = authService,
        _httpClient = httpClient ?? http.Client();

  /// Common headers for FHIR requests
  Map<String, String> get _headers {
    final headers = <String, String>{
      'Content-Type': FhirConfig.fhirMimeType,
      'Accept': FhirConfig.fhirMimeType,
    };

    final token = _authService.currentToken;
    if (token != null && !token.isExpired) {
      headers['Authorization'] = '${token.tokenType} ${token.accessToken}';
    }

    return headers;
  }

  // ---------------------------------------------------------------------------
  // FHIR Interactions
  // ---------------------------------------------------------------------------

  /// Read a resource by type and id
  /// GET [base]/[type]/[id]
  Future<Map<String, dynamic>> read(String resourceType, String id) async {
    await _authService.ensureValidToken();

    final url = Uri.parse('${FhirConfig.baseUrl}/$resourceType/$id');
    final response = await _httpClient.get(url, headers: _headers);

    _checkResponse(response);
    return jsonDecode(response.body) as Map<String, dynamic>;
  }

  /// Search for resources
  /// GET [base]/[type]?params
  Future<FhirBundle> search(
    String resourceType, {
    Map<String, String>? parameters,
    int? count,
    int? offset,
  }) async {
    await _authService.ensureValidToken();

    final queryParams = <String, String>{
      ...?parameters,
      if (count != null) '_count': count.toString(),
      if (offset != null) '_offset': offset.toString(),
      '_format': 'json',
    };

    final url = Uri.parse('${FhirConfig.baseUrl}/$resourceType')
        .replace(queryParameters: queryParams);
    final response = await _httpClient.get(url, headers: _headers);

    _checkResponse(response);
    return FhirBundle.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  }

  /// Create a new resource
  /// POST [base]/[type]
  Future<Map<String, dynamic>> create(
    String resourceType,
    Map<String, dynamic> resource,
  ) async {
    await _authService.ensureValidToken();

    final url = Uri.parse('${FhirConfig.baseUrl}/$resourceType');
    final response = await _httpClient.post(
      url,
      headers: _headers,
      body: jsonEncode(resource),
    );

    _checkResponse(response, expectedStatus: 201);
    return jsonDecode(response.body) as Map<String, dynamic>;
  }

  /// Update an existing resource
  /// PUT [base]/[type]/[id]
  Future<Map<String, dynamic>> update(
    String resourceType,
    String id,
    Map<String, dynamic> resource,
  ) async {
    await _authService.ensureValidToken();

    final url = Uri.parse('${FhirConfig.baseUrl}/$resourceType/$id');
    final response = await _httpClient.put(
      url,
      headers: _headers,
      body: jsonEncode(resource),
    );

    _checkResponse(response);
    return jsonDecode(response.body) as Map<String, dynamic>;
  }

  /// Delete a resource
  /// DELETE [base]/[type]/[id]
  Future<void> delete(String resourceType, String id) async {
    await _authService.ensureValidToken();

    final url = Uri.parse('${FhirConfig.baseUrl}/$resourceType/$id');
    final response = await _httpClient.delete(url, headers: _headers);

    _checkResponse(response, expectedStatus: 204);
  }

  /// Get server capability statement
  /// GET [base]/metadata
  Future<Map<String, dynamic>> capabilities() async {
    final url = Uri.parse('${FhirConfig.baseUrl}/metadata');
    final response = await _httpClient.get(url, headers: {
      'Accept': FhirConfig.fhirMimeType,
    });

    _checkResponse(response);
    return jsonDecode(response.body) as Map<String, dynamic>;
  }

  /// Execute a batch/transaction Bundle
  /// POST [base]
  Future<FhirBundle> transaction(FhirBundle bundle) async {
    await _authService.ensureValidToken();

    final url = Uri.parse(FhirConfig.baseUrl);
    final response = await _httpClient.post(
      url,
      headers: _headers,
      body: jsonEncode(bundle.toJson()),
    );

    _checkResponse(response);
    return FhirBundle.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  }

  /// Fetch the next page of a search result Bundle
  Future<FhirBundle?> nextPage(FhirBundle bundle) async {
    final nextUrl = bundle.nextPageUrl;
    if (nextUrl == null) return null;

    await _authService.ensureValidToken();

    final response = await _httpClient.get(
      Uri.parse(nextUrl),
      headers: _headers,
    );

    _checkResponse(response);
    return FhirBundle.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  }

  // ---------------------------------------------------------------------------
  // Response handling
  // ---------------------------------------------------------------------------

  void _checkResponse(http.Response response, {int? expectedStatus}) {
    final status = response.statusCode;
    final expected = expectedStatus ?? 200;

    if (status == expected || (expectedStatus == null && status >= 200 && status < 300)) {
      return;
    }

    Map<String, dynamic>? outcome;
    try {
      final body = jsonDecode(response.body) as Map<String, dynamic>;
      if (body['resourceType'] == 'OperationOutcome') {
        outcome = body;
      }
    } catch (_) {
      // Not JSON
    }

    throw FhirRestException(
      statusCode: status,
      message: outcome != null
          ? _extractOperationOutcomeMessage(outcome)
          : 'HTTP $status: ${response.reasonPhrase}',
      operationOutcome: outcome,
    );
  }

  String _extractOperationOutcomeMessage(Map<String, dynamic> outcome) {
    final issues = outcome['issue'] as List?;
    if (issues == null || issues.isEmpty) return 'Unknown FHIR error';
    final first = issues.first as Map<String, dynamic>;
    return first['diagnostics'] as String? ??
        first['details']?['text'] as String? ??
        'FHIR operation error';
  }

  void dispose() {
    _httpClient.close();
  }
}
