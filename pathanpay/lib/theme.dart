import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blueAccent,
    textTheme: TextTheme(
      bodySmall: TextStyle(
        fontSize: 12,
        color: Colors.black
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: Colors.black87
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: Colors.black
      ),
      titleSmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black
      ),
      titleMedium: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black
      ),
      titleLarge: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.bold,
        color: Colors.black
      ),
    ),
  );
  static final ThemeData darkTheme = ThemeData.dark();
}