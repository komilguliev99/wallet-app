import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int number;
  final int expiryMonth;
  final int expiryYear;
  final Color? color;
  const MyCard(
      {Key? key,
      required this.balance,
      required this.number,
      required this.expiryMonth,
      required this.expiryYear,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Balance',
                  style: TextStyle(color: Colors.white),
                ),
                Image.asset(
                  'lib/icons/visa.png',
                  height: 50,
                )
              ],
            ),
            Text(
              '\$$balance',
              style: const TextStyle(color: Colors.white, fontSize: 32),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _getFormattedCardNumber(),
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  '$expiryMonth/$expiryYear',
                  style: const TextStyle(color: Colors.white),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  _getFormattedCardNumber() {
    String str = number.toString();
    return '**** ${str.substring(str.length - 4)}';
  }
}
