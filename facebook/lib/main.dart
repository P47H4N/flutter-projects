import 'package:facebook/scene/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook Lite',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/home': (context) => HomePage(),
        // Will be added Soon
        // '/friends': (context) => FriendsPage(),
        // '/messages': (context) => MessagesPage(),
        // '/videos': (context) => VideosPage(),
        // '/notifications': (context) => NotificationsPage(),
        // '/dashboard': (context) => DashboardPage(),
        // '/menu': (context) => MenuPage(),
        // '/profile': (context) => ProfilePage(),
      },
    );
  }
}

