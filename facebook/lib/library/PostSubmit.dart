import 'package:flutter/material.dart';

class PostSubmit extends StatelessWidget {
  const PostSubmit({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/profile.jpg'),
          ),
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: "What's on your mind?",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.grey[200],
              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            ),
          ),
        ),
        SizedBox(width: 10),
        IconButton(
          icon: Icon(Icons.photo, color: Colors.green),
          onPressed: () {},
        ),
        SizedBox(width: 10),
      ],
    );
  }
}