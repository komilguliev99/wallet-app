import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String iconPath;
  final String title;
  final String subtitle;

  const MyListTile(
      {Key? key,
      required this.iconPath,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(16),
              child: Image.asset(
                iconPath,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade800),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  subtitle,
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade500),
                ),
              ],
            )
          ],
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward))
      ],
    );
  }
}
