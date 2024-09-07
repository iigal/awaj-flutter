import 'package:intl/intl.dart';

class LocalizedStrings {
  // Static method to initialize translations
  static Future<void> load() async {
    // Initialize the localization library with Nepali translations
    // This would typically be done through your main app initialization
  }

  // Example Nepali translations
  static String get yes => Intl.message(
    'हो',
    name: 'yes',
    locale: 'ne',
  );

  static String get no => Intl.message(
    'होईन',
    name: 'no',
    locale: 'ne',
  );

  static String get logout => Intl.message(
    'लगआउट',
    name: 'logout',
    locale: 'ne',
  );

  static String get yourComplaints => Intl.message(
    'तपाईंका गुनासोहरू',
    name: 'yourComplaints',
    locale: 'ne',
  );

  static String get wantLogout => Intl.message(
    'तपाईं साँचिकन लगआउट गर्न चाहानुहुन्छ?',
    name: 'wantLogout',
    locale: 'ne',
  );

  // Add more strings as needed
}
