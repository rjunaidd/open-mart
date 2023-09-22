import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import 'signin_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5), () =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => SigninScreen())));

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.teal.shade100,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/open mart.png"),
              radius: 70,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Welcome to Open Mart",
            style: TextStyle(
                color: Colors.teal.shade900,
                fontWeight: FontWeight.bold,
                shadows: [Shadow(color: Colors.black)],
                fontSize: 30),
          ),
          const SizedBox(
            height: 50,
          ),
          LoadingAnimationWidget.staggeredDotsWave(
            color: Colors.white,
            size: 50,
          ),
          const SizedBox(
            height: 30,
          ),
           Text(
            "Loading ...",
            style: TextStyle(
                color: Colors.teal.shade900, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 40,
          ),

        ],
      ),
    ));
  }
}
