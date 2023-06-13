import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String iconPath;
  final String buttonText;
  const MyButton({Key? key, required this.iconPath, required this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 95,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 40,
                    spreadRadius: 10)
              ]),
          child: Image.asset(iconPath),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          buttonText,
          style: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
