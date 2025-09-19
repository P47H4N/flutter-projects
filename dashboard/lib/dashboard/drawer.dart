import 'package:dashboard/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

class AppSidebar extends StatelessWidget {
  const AppSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  leading: Icon(Icons.dashboard, color: Colors.amber,),
                  title: Text('Dashboard', style: Theme.of(context).textTheme.bodyMedium,),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => DashboardPage()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person, color: Colors.green,),
                  title: Text('User Management', style: Theme.of(context).textTheme.bodyMedium,),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.group, color: Colors.blueGrey,),
                  title: Text('Staff Management', style: Theme.of(context).textTheme.bodyMedium,),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.credit_card, color: Colors.blueAccent,),
                  title: Text('Billing Center', style: Theme.of(context).textTheme.bodyMedium,),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.money_sharp, color: Colors.brown,),
                  title: Text('Transactions', style: Theme.of(context).textTheme.bodyMedium,),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.feedback, color: Colors.green,),
                  title: Text('Feedbacks', style: Theme.of(context).textTheme.bodyMedium,),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.settings, color: Colors.amber,),
                  title: Text('Settings', style: Theme.of(context).textTheme.bodyMedium,),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.person, color: Colors.blueAccent,),
                  title: Text('Profile', style: Theme.of(context).textTheme.bodyMedium,),
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}