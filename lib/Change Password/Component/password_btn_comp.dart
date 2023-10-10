import 'package:flutter/material.dart';

class PasswordChangeB extends StatelessWidget {
  final String passwordbtn;

  const PasswordChangeB({super.key , required this.passwordbtn});

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
        child: Text(passwordbtn ,
          style:const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24
          ),),
      ),
    );
  }
}
