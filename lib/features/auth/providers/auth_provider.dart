import 'dart:convert';

import 'package:awaj/components/base_url.dart';
import 'package:awaj/features/auth/models/auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
part 'auth_provider.g.dart';

@Riverpod(keepAlive: true)
class AuthProvider extends _$AuthProvider {
  late SharedPreferences _sharedPreferences;
  static const _sharedPrefsKey = 'auth';

  @override
  Future<AuthUser?> build() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    return await _loginRecoveryAttempt();
  }

  Future<AuthUser?> _loginRecoveryAttempt() async {
    final savedToken = _sharedPreferences.getString(_sharedPrefsKey);
    if (savedToken == null) return Future.value(null);
    AuthUser tempAuth = AuthUser.fromJson(json.decode(savedToken));
    AuthUser authUser = await _loginWithToken(tempAuth);
    return authUser;
  }

  Future<AuthUser> _loginWithToken(AuthUser tempAuth) async {
    final logInAttempt = await http.post(Uri.parse("${BaseUrl.baseUrl}/relogin"), headers: {
      "Authorization": "Bearer ${tempAuth.token}",
    });
    final authUser = AuthUser.fromJson(json.decode(logInAttempt.body));
    await saveToken(authUser);
    return authUser;
  }

  Future<void> saveToken(AuthUser authUser) async {
    _sharedPreferences.remove(_sharedPrefsKey).catchError((error) {});
    await _sharedPreferences.setString(_sharedPrefsKey, json.encode(authUser));
  }

  String getToken() {
    return _sharedPreferences.getString(_sharedPrefsKey) ?? "";
  }

  void disposeAuth() async {
    _sharedPreferences.remove(_sharedPrefsKey).catchError((error) {});
    state = const AsyncValue.data(null);
  }
}
