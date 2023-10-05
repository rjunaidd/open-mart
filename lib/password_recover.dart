import 'package:flutter/material.dart';
import 'package:open_mart/components/my_button.dart';
import 'package:open_mart/components/text.dart';
import 'package:open_mart/components/textfield.dart';
import 'package:open_mart/signin_screen.dart';

class PasswordRecover extends StatefulWidget {
  const PasswordRecover({super.key});

  @override
  State<PasswordRecover> createState() => _PasswordRecoverState();
}

class _PasswordRecoverState extends State<PasswordRecover> {
  TextEditingController enterPassword = TextEditingController();
  TextEditingController confirmYourPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 1,right: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SimpeText(text: "Change"),
                SimpeText(text: "Password"),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40 , right: 40),
            child: MyTextField(hintText: "Enter Password", controller: enterPassword),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40 , right: 40),
            child: MyTextField(hintText: "Enter Confirm Password", controller: confirmYourPassword),
          ),
          const SizedBox(
            height: 50,
          ),
          InkWell(
              child:const MyButton(
                  name: "Password Change"),
            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) =>const SigninScreen())),
          ),

        ],
      ),
    );
  }
}
