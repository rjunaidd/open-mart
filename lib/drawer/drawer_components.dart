import 'package:flutter/material.dart';

class DrawerButton extends StatelessWidget {
  final String buttonName;
  const DrawerButton({super.key, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return Text(
      buttonName,
      style:
          TextStyle(color: Colors.black, fontSize: 20, fontFamily: "Skranji"),
    );
  }
}
