import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blueAccent,
    textTheme: TextTheme(
      bodyMedium: TextStyle(fontSize: 16, color: Colors.black87),
    ),
  );
  static final ThemeData darkTheme = ThemeData.dark();
}