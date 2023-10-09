import 'package:flutter/material.dart';

class ButtonCom extends StatelessWidget {
  final String title;

  const ButtonCom({super.key , required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      decoration: BoxDecoration(
          color: Colors.teal,
      borderRadius: BorderRadius.circular(10)
      ),
      child: Center(
          child: Text(title ,
            style:const TextStyle(
            color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24
          ),),
      ),
    );
  }
}
