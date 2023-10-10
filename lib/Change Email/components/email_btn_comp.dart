import 'package:flutter/material.dart';

class EmailButtonC extends StatelessWidget {
  final String emailbtn;
  const EmailButtonC({super.key , required this.emailbtn});

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
        child: Text(emailbtn ,
          style:const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24
          ),),
      ),
    );
  }
}
