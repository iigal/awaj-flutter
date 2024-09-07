import 'package:flutter/material.dart';

class ThemeColor {
  // Define your color constants here
  static const Color primaryColor = Color(0xFF4CAF50); // Green
  static const Color secondaryColor = Color(0xFF2196F3); // Blue
  static const Color backgroundColor = Color(0xFFFFFFFF); // White
  static const Color textColor = Color(0xFF000000); // Black
  static const Color errorColor = Color(0xFFF44336); // Red
  static const Color borderColor = Color(0xFFBDBDBD); // Grey

  static const Color lightGreen = Color(0xFFC8E6C9); // Light Green
  static const Color darkGreen = Color(0xFF388E3C); // Dark Green
  static const Color lightBlue = Color(0xFFBBDEFB); // Light Blue
  static const Color darkBlue = Color(0xFF0D47A1);

  static var green;

  static var backgroundLight; // Dark Blue

  static ThemeData get themeData {
    return ThemeData(
      colorScheme: const ColorScheme(
        brightness: Brightness.light, // or Brightness.dark for dark theme
        primary: primaryColor,
        onPrimary: Colors.white, // Color for text/icons on primary
        secondary: secondaryColor,
        onSecondary: Colors.white, // Color for text/icons on secondary
        error: errorColor,
        onError: Colors.white, // Color for text/icons on error
        surface: Colors.white, // Color for surface elements
        onSurface: Colors.black, // Color for text/icons on surface
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(color: textColor),
        bodyMedium: TextStyle(color: textColor),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
        ),
      ),
    );
  }
}
