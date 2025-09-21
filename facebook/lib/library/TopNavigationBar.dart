import 'package:flutter/material.dart';

class TopNavigationBar extends StatelessWidget {
  final String page;
  const TopNavigationBar({super.key, required this.page});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          icon: Icon(
            Icons.home_outlined,
            size: 27,
            color: page == 'home' ? Colors.blue : Colors.grey[700],
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/friends');
          },
          icon: Icon(
            Icons.people_outlined,
            size: 27,
            color: page == 'friends' ? Colors.blue : Colors.grey[700],
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/messages');
          },
          icon: Icon(
            Icons.chat_outlined,
            size: 27,
            color: page == 'messages' ? Colors.blue : Colors.grey[700],
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/videos');
          },
          icon: Icon(
            Icons.ondemand_video_outlined,
            size: 27,
            color: page == 'videos' ? Colors.blue : Colors.grey[700],
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/notifications');
          },
          icon: Icon(
            Icons.notifications_outlined,
            size: 27,
            color: page == 'notifications' ? Colors.blue : Colors.grey[700],
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/dashboard');
          },
          icon: Icon(
            Icons.dashboard_outlined,
            size: 27,
            color: page == 'dashboard' ? Colors.blue : Colors.grey[700],
          ),
        ),
      ],
    );
  }
}