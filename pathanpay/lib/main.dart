import 'package:flutter/material.dart';
import 'package:pathanpay/pages/gettingstart.dart';
import 'package:pathanpay/pages/home.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pathan Pay',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: GettingStartedPage(),
      routes: {
        '/getting-started': (context) => const GettingStartedPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
