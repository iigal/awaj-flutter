import 'package:awaj/secret.dart';

class BaseUrl {
  // Define the base URL for your API
  static const String baseUrl = AppSecret.baseURL;

  // Define endpoints as needed
  static const String verify = "${baseUrl}verify";
  static const String signup = "${baseUrl}signup";
  static const String login = "${baseUrl}login";
  // Add other endpoints here as needed

  // Optional: A method to construct full URLs
  static String endpoint(String path) {
    return "$baseUrl$path";
  }
}
