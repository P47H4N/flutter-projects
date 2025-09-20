import 'package:flutter/material.dart';
import 'package:pathanpay/library/bottomnavigation.dart';
import 'package:pathanpay/library/creditcard.dart';
import 'package:pathanpay/library/quickbuttons.dart';
import 'package:pathanpay/library/transactions.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Colors.white, Colors.blue.shade100],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(16.0, 16.0, 0, 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage('https://userpic.codeforces.org/3508746/title/5eadf4e915defd89.jpg'),
                    ),
                    SizedBox(width: 16.0,),
                    Text(
                      "Hello, Pathan",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Spacer(),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Icon(Icons.notifications_outlined, size: 30.0, color: Colors.grey[700],),
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
                              '1',
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
                    SizedBox(width: 16.0,),
                  ],
                ),
                SizedBox(height: 24.0,),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Balance",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(height: 8.0,),
                      Text(
                        "\$5,750.20",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      SizedBox(height: 24.0,),
                      Row(
                        children: [
                          Text(
                            "Cards",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          Spacer(),
                          Icon(
                            Icons.add,
                            color: Colors.blueAccent,
                          ),
                          Text(
                            "Add New",
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          
                          SizedBox(width: 16.0,),
                        ],
                      ),
                      SizedBox(height: 16.0,),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            HomePageCreditCard(color: Colors.blueAccent, cardNumber: '**** **** **** 5918', expiryDate: '12/26', cardHolder: 'Shariat Ullah Pathan', cardType: 'VISA'),
                            HomePageCreditCard(color: Colors.blueGrey, cardNumber: '**** **** **** 9388', expiryDate: '12/28', cardHolder: 'Shariat Ullah Pathan', cardType: 'Master Card'),
                          ],
                        ),
                      ),
                      SizedBox(height: 24.0,),
                      Text(
                        "Quick Options",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      SizedBox(height: 16.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          HomePageQuickButtons(color: Colors.orange, icon: Icons.arrow_upward, label: 'Send'),
                          HomePageQuickButtons(color: Colors.blue, icon: Icons.arrow_downward, label: 'Receive'),
                          HomePageQuickButtons(color: Colors.purple, icon: Icons.add, label: 'Add Money'),
                          HomePageQuickButtons(color: Colors.green, icon: Icons.compare_arrows, label: 'Convert'),
                          SizedBox(width: 2.0,),
                        ],
                      ),
                      SizedBox(height: 24.0,),
                      Text(
                        "Last Transactions",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      SizedBox(height: 16.0,),
                      Column(
                        children: [
                          HomePageTransactions(icon: Icons.shopping_bag, title: 'Shopping', date: '20 Sep 2025', amount: '- \$1156.00', type: 'Payment'),
                          HomePageTransactions(icon: Icons.shopping_bag, title: 'Rupali Bank', date: '20 Sep 2025', amount: '+ \$1500.00', type: 'Transfer'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Bottomnavigationbar(),
    );
  }
}