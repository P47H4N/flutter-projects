import 'package:dashboard/dashboard/dashboardcard.dart';
import 'package:flutter/material.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Dashboard Overview",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              "Total Overview",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black54,
              ),
            ),
            Row(
              children: [
                DashBoardCard(title: "Total Users", icon: Icons.person, amount: 35, color: Colors.blue),
                DashBoardCard(title: "Total Staffs", icon: Icons.group, amount: 10, color: Colors.green),
                DashBoardCard(title: "Total Transactions", icon: Icons.monetization_on, amount: 32, color: Colors.amber),
                DashBoardCard(title: "Total Feedbacks", icon: Icons.feedback, amount: 5, color: Colors.red),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              "Profit Overview",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black54,
              ),
            ),
            Row(
              children: [
                DashBoardCard(title: "Today's Profit", icon: Icons.attach_money, amount: 2300, color: Colors.purple),
                DashBoardCard(title: "This Month's Profit", icon: Icons.money, amount: 14300, color: Colors.orange),
                DashBoardCard(title: "This Year's Profit", icon: Icons.account_balance_wallet, amount: 152300, color: Colors.teal),
                DashBoardCard(title: "Total Profit", icon: Icons.trending_up, amount: 723000, color: Colors.indigo),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              "Quick Actions",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 16.0),
            Wrap(
              spacing: 16.0,
              runSpacing: 16.0,
              children: [
                QuickActionButton(label: "Add User", icon: Icons.person_add, color: Colors.blueAccent,),
                QuickActionButton(label: "Add Staff", icon: Icons.group_add, color: Colors.green,),
                QuickActionButton(label: "New Transaction", icon: Icons.add_shopping_cart, color: Colors.yellowAccent,),
                QuickActionButton(label: "View Feedback", icon: Icons.feedback, color: Colors. blueGrey,),
                QuickActionButton(label: "View Transactions", icon: Icons.view_list, color: Colors.orangeAccent,),
                QuickActionButton(label: "Download Report", icon: Icons.download, color: Colors.redAccent,),
              ],
            ),
            SizedBox(height: 16.0),
            Wrap(
              spacing: 16.0,
              runSpacing: 16.0,
              children: [
                QuickActionButton(label: "Profile", icon: Icons.person, color: Colors.greenAccent,),
                QuickActionButton(label: "Settings", icon: Icons.settings, color: Colors.blueGrey,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}