import 'package:dashboard/dashboard/drawer.dart';
import 'package:dashboard/dashboard/overview.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Dashboard'),
      //   backgroundColor: Theme.of(context).primaryColor,
      //   foregroundColor: Colors.white,
      //   centerTitle: true,
      // ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    "Pathan Admin Panel",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Text(
                          "EN",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(135, 212, 190, 190),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Text(
                          "বাংলা",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Icon(Icons.notifications, size: 30.0, color: Colors.grey[700],),
                          Positioned(
                            right: -2,
                            top: -4,
                            child: Container(
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                              child: Text(
                                '3',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 16.0),
                      CircleAvatar(
                        backgroundImage: NetworkImage('https://userpic.codeforces.org/3508746/title/5eadf4e915defd89.jpg'),
                      ),
                      SizedBox(width: 32.0),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppSidebar(),
                  VerticalDivider(
                    width: 1,
                    color: Colors.black12,
                  ),
                  OverViewPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}