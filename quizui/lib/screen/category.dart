import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  CategoryPage({super.key});
  final items = [
    {"icon": Icons.science, "title": "Science"},
    {"icon": Icons.history_edu, "title": "History"},
    {"icon": Icons.sports_soccer, "title": "Sports"},
    {"icon": Icons.movie, "title": "Movies"},
    {"icon": Icons.music_note, "title": "Music"},
    {"icon": Icons.book, "title": "Literature"},
    {"icon": Icons.language, "title": "Geography"},
    {"icon": Icons.computer, "title": "Technology"},
    {"icon": Icons.brush, "title": "Art"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Category', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 600,
          child: Stack(
            children: [
              ClipPath(
                clipper: ClipContainer(),
                child: Container(
                  height: 200,
                  color: Colors.blueAccent,
                ),
              ),
              Positioned(
                top: 20,
                left: 20,
                child: Text(
                  "Select a category to start the quiz",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 80,
                left: 20,
                right: 20,
                child: GridView.builder(
                  itemCount: items.length,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 5,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(items[index]['icon'] as IconData, size: 50, color: Colors.blueAccent),
                            SizedBox(height: 10),
                            Text(
                              items[index]['title'] as String,
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ClipContainer extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(size.width / 4, size.height, size.width / 2, size.height - 50);
    path.quadraticBezierTo(3 * size.width / 4, size.height - 100, size.width, size.height - 50);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}