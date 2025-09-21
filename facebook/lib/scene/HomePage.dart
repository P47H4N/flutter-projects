import 'package:facebook/library/PostOptionCard.dart';
import 'package:facebook/library/PostSubmit.dart';
import 'package:facebook/library/StoryOptions.dart';
import 'package:facebook/library/TopNavigationBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/facebook.png',
                  width: 128,
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(Icons.add, size: 24, color: Colors.black87),
                ),
                SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(Icons.search, size: 24, color: Colors.black87),
                ),
                SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(Icons.menu, size: 24, color: Colors.black87),
                ),
              ],
            ),
          ),
          TopNavigationBar(page: 'home'),
          Divider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  PostSubmit(),
                  Divider(
                    thickness: 1,
                    color: Colors.grey[300],
                  ),
                  StoryOptions(),
                  Divider(
                    thickness: 1,
                    color: Colors.grey[300],
                  ),
                  PostOptionCard(image: 'assets/profile.jpg', name: 'Shariat Ullah Pathan', time: '1 hr', postText: 'Hello, this is my first post!', likes: '100', comments: '50', shares: '10'),
                  PostOptionCard(image: 'assets/profile.jpg', name: 'Shariat Ullah Pathan', time: '2 hr', postText: 'Welcome to my app', likes: '30', comments: '50', shares: '1'),
                  PostOptionCard(image: 'assets/profile.jpg', name: 'Shariat Ullah Pathan', time: '2 hr', postText: 'Welcome to my app', likes: '30', comments: '50', shares: '1'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}