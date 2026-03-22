/// FHIR Auth Service — abstraction for SMART on FHIR authentication.
/// Supports mock mode for development and real OAuth2 flow for production.
library;

import 'dart:async';

import 'package:awaj/core/fhir/auth/fhir_auth_token.dart';
import 'package:awaj/core/fhir/auth/mock_fhir_auth.dart';
import 'package:awaj/core/fhir/fhir_config.dart';
import 'package:awaj/core/fhir/models/fhir_patient.dart';

/// Auth state representation
sealed class FhirAuthState {
  const FhirAuthState();
}

class FhirAuthUnauthenticated extends FhirAuthState {
  const FhirAuthUnauthenticated();
}

class FhirAuthLoading extends FhirAuthState {
  const FhirAuthLoading();
}

class FhirAuthAuthenticated extends FhirAuthState {
  final FhirAuthToken token;
  final FhirPatient patient;

  const FhirAuthAuthenticated({required this.token, required this.patient});
}

class FhirAuthError extends FhirAuthState {
  final String message;
  const FhirAuthError(this.message);
}

/// FHIR Authentication Service
///
/// Handles SMART on FHIR OAuth2 login flow.
/// In mock mode, returns a fake patient and token.
/// In production, performs real OAuth2 authorization code flow.
class FhirAuthService {
  FhirAuthToken? _currentToken;
  FhirPatient? _currentPatient;

  final _authStateController = StreamController<FhirAuthState>.broadcast();

  /// Stream of auth state changes
  Stream<FhirAuthState> get authStateChanges => _authStateController.stream;

  /// Current auth state
  FhirAuthState get currentState {
    if (_currentToken != null && _currentPatient != null) {
      return FhirAuthAuthenticated(token: _currentToken!, patient: _currentPatient!);
    }
    return const FhirAuthUnauthenticated();
  }

  /// Whether the user is authenticated
  bool get isAuthenticated => _currentToken != null && !_currentToken!.isExpired;

  /// Current patient (null if not authenticated)
  FhirPatient? get currentPatient => _currentPatient;

  /// Current token (null if not authenticated)
  FhirAuthToken? get currentToken => _currentToken;

  /// Login with username/password
  /// In mock mode: accepts any credentials
  /// In production: will use SMART on FHIR Resource Owner Password (or redirect to auth endpoint)
  Future<FhirAuthAuthenticated> login(String username, String password) async {
    _authStateController.add(const FhirAuthLoading());

    try {
      if (FhirConfig.useMockData) {
        final result = await MockFhirAuth.login(username, password);
        _currentToken = result.token;
        _currentPatient = result.patient;
      } else {
        // Real SMART on FHIR OAuth2 flow
        // TODO: Implement with flutter_appauth or fhir_r5_auth
        // Steps:
        // 1. Discover SMART configuration: GET {baseUrl}/.well-known/smart-configuration
        // 2. Build authorization URL with scopes
        // 3. Open browser/webview for user consent
        // 4. Receive authorization code via redirect
        // 5. Exchange code for tokens at token endpoint
        // 6. Fetch Patient resource using token
        throw UnimplementedError(
          'Real SMART on FHIR auth not yet implemented. '
          'Set FhirConfig.useMockData = true for development.',
        );
      }

      final state = FhirAuthAuthenticated(token: _currentToken!, patient: _currentPatient!);
      _authStateController.add(state);
      return state;
    } catch (e) {
      final state = FhirAuthError(e.toString());
      _authStateController.add(state);
      rethrow;
    }
  }

  /// Refresh the access token
  Future<void> refreshToken() async {
    if (_currentToken?.refreshToken == null) {
      await logout();
      return;
    }

    if (FhirConfig.useMockData) {
      // Mock: just extend the expiry
      _currentToken = FhirAuthToken(
        accessToken: _currentToken!.accessToken,
        refreshToken: _currentToken!.refreshToken,
        idToken: _currentToken!.idToken,
        expiresAt: DateTime.now().add(const Duration(hours: 1)),
        scopes: _currentToken!.scopes,
        patientId: _currentToken!.patientId,
      );
      return;
    }

    // Real flow: POST to token endpoint with refresh_token grant
    // TODO: implement real token refresh
  }

  /// Logout — clear all auth state
  Future<void> logout() async {
    _currentToken = null;
    _currentPatient = null;
    _authStateController.add(const FhirAuthUnauthenticated());
  }

  /// Check if token needs refresh and refresh if needed
  Future<void> ensureValidToken() async {
    if (_currentToken == null) return;
    if (_currentToken!.needsRefresh) {
      await refreshToken();
    }
  }

  void dispose() {
    _authStateController.close();
  }
}
