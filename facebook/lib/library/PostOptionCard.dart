import 'package:flutter/material.dart';

class PostOptionCard extends StatelessWidget {
  final String image;
  final String name;
  final String time;
  final String postText;
  final String likes;
  final String comments;
  final String shares;

  const PostOptionCard({
    super.key,
    required this.image,
    required this.name,
    required this.time,
    required this.postText,
    required this.likes,
    required this.comments,
    required this.shares,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(image),
                  radius: 20,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      time,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.more_horiz),
                SizedBox(width: 10),
                Icon(Icons.close),
              ],
            ),
            SizedBox(height: 10),
            Text(
              postText,
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.favorite, size: 16, color: Colors.red),
                Icon(Icons.thumb_up, size: 16, color: Colors.blue),
                SizedBox(width: 2),
                Text(likes),
              ],
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Expanded(
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.thumb_up_alt_outlined, size: 20, color: Colors.black),
                    label: Text(likes),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 4),
                Expanded(
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.comment_outlined, size: 20, color: Colors.black),
                    label: Text(comments),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 4),
                Expanded(
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.share_outlined, size: 20, color: Colors.black),
                    label: Text(shares),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}