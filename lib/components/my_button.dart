import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  final String name;
  const MyButton({super.key , required this.name});

  @override
  Widget build(BuildContext context) {
    return  Container(
        width: 310,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black87,
        ),
        child: Center(child: Text(name , style: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold
        ),),
    ),
    );
  }
}
