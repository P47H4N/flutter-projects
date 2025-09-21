import 'package:flutter/material.dart';

class StoryOptionCard extends StatelessWidget {
  final String image;
  final String name;
  final String amount;

  const StoryOptionCard({
    super.key,
    required this.image,
    required this.name,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          Container(
            width: 100,
            height: 150,
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey[300],
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.contain,
                alignment: Alignment.center,
              ),
            ),
          ),
          Positioned(
            bottom: 8,
            left: 8,
            right: 8,
            child: Text(
              name,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12,
                shadows: [
                  Shadow(
                    offset: Offset(0, 0),
                    blurRadius: 3,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 8,
            right: 8,
            child: Container(
              padding: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                amount,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}