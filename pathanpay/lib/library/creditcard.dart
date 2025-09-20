import 'package:flutter/material.dart';

class HomePageCreditCard extends StatelessWidget {
  final Color color;
  final String cardNumber;
  final String expiryDate;
  final String cardHolder;
  final String cardType;

  const HomePageCreditCard({
    super.key,
    required this.color,
    required this.cardNumber,
    required this.expiryDate,
    required this.cardHolder,
    required this.cardType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 180,
      margin: const EdgeInsets.only(right: 16.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [color, Color.fromARGB(26, 221, 148, 148)],
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cardType,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Spacer(),
            Text(
              cardNumber,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                letterSpacing: 2.0,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Row(
              children: [
                Text(
                  cardHolder,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Spacer(),
                Text(
                  expiryDate,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ]
            ),
          ],
        ),
      ),
    );
  }
}