import 'package:awaj/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository();
});

class AuthRepository {
  void login() async {
    await http.post(Uri.parse('${apiUrl}/login'), body: {});
  }
}
