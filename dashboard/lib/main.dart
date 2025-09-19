import 'package:dashboard/dashboard/dashboard.dart';
import 'package:dashboard/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: DashboardPage(),
    );
  }
}