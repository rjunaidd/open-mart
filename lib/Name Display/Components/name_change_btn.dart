import 'package:flutter/material.dart';

class NameChange extends StatelessWidget {
  final String namebtn;

  const NameChange({super.key , required this.namebtn});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50,
      width: 300,
      decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Center(
        child: Text(namebtn ,
          style:const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24
          ),),
      ),
    );
  }
}
