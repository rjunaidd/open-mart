import 'package:flutter/material.dart';
import 'package:open_mart/components/my_button.dart';
import 'package:open_mart/components/text.dart';
import 'package:open_mart/components/textfield.dart';
import 'package:open_mart/password_recover.dart';
import 'package:open_mart/signup_screen.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController phoneNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SimpeText(text: "Oh, no !"),
                SimpeText(text: "I forgot"),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding:  EdgeInsets.only(left: 40, right: 40),
            child: Text(
              "Enter your email, phone number or username and we'll send you a link to change a new password ",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: MyTextField(
                hintText: "Email or Phone Number", controller: phoneNumber),
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
              child:const  MyButton(
                  name: "Forgot Password"
              ),
              onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) =>const PasswordRecover()))
          ),
          const SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account ?",
                style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                width: 5,
              ),
              InkWell(
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                      fontFamily: "Skranji",
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>const SignupScreen()));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
