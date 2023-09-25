import 'package:flutter/material.dart';

class DrawerButton extends StatelessWidget {
  final String buttonName;
  final IconData Iconbtton;
  const DrawerButton({super.key,required this.Iconbtton ,required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Icon(Iconbtton),
        SizedBox(
          width: 70,
        ),
      Text(
      buttonName,
      style:
      TextStyle(color: Colors.black, fontSize: 20, fontFamily: "Skranji"),
    ),
      ],
    );
  }
}
