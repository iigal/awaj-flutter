import 'package:awaj/features/main/new_routes/models/user_models.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static Future<void> saveUserDetails(String name, String dob, String gender) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', name);
    await prefs.setString('dob', dob);
    await prefs.setString('gender', gender);
  }

  static Future<void> saveUserNumber(String number) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('number', number);
  }

  static Future<UserDetail> getUserDetails() async {
    final prefs = await SharedPreferences.getInstance();
    final data = {
      'name': prefs.getString('name') ?? "",
      'dob': prefs.getString('dob') ?? "",
      'gender': prefs.getString('gender') ?? "",
      'number': prefs.getString('number') ?? "",
    };
    return UserDetail.fromMap(data);
  }
}
