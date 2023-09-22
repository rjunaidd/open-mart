import 'package:flutter/material.dart';

class SimpeText extends StatelessWidget {
  final String text;
  const SimpeText({super.key , required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:const TextStyle(
          color: Colors.black87,
          fontSize: 60,
          fontFamily: "DM Serif Display",
          fontWeight: FontWeight.bold),
    );
  }
}
