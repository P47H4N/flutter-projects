import 'package:facebook/library/StoryOptionCard.dart';
import 'package:flutter/material.dart';

class StoryOptions extends StatelessWidget {
  const StoryOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Stack(
              children: [
                Container(
                  width: 100,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage('assets/my_story.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 8,
                  left: 8,
                  right: 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 16,
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.add, color: Colors.white, size: 20),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Create Story',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          StoryOptionCard(image: 'assets/profile.jpg', name: 'Shariat Ullah Pathan', amount: '1'),
          StoryOptionCard(image: 'assets/ostad.png', name: 'Ostad', amount: '5'),
          StoryOptionCard(image: 'assets/icpc.png', name: 'ICPC 2025', amount: '3'),
          StoryOptionCard(image: 'assets/cf.png', name: 'CodeForces', amount: '2'),
        ],
      ),
    );
  }
}