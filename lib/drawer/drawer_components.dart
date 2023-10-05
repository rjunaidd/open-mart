import 'package:flutter/material.dart';

class DrawerButton extends StatelessWidget {
  final String buttonName;
  final IconData Iconbtton;
  const DrawerButton({super.key,required this.Iconbtton ,required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      const  SizedBox(
          width: 40,
        ),
        Icon(Iconbtton),
       const SizedBox(
          width: 20,
        ),
      Text(
      buttonName,
      style:
      TextStyle(color: Colors.black, fontSize: 20, fontFamily: "Lexend"),
    ),
      ],
    );
  }
}
