import 'package:flutter/material.dart';
import 'package:open_mart/components/my_button.dart';

import 'components/text.dart';
import 'signin_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  TextEditingController phoneNumber = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  TextEditingController fullname = TextEditingController();
  TextEditingController username = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Padding(
            padding: const EdgeInsets.only(right: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:const [
                SimpeText(text: "Hi !",),
                SimpeText(text: "Welcome")
              ],
            ),
          ),
          const SizedBox(height: 10,),
          const  Text(
            "Let's create an account",
            style: TextStyle(
                color: Colors.black87,
                fontSize: 16,
                fontWeight: FontWeight.normal),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: phoneNumber,
              decoration: InputDecoration(

                hintText: "Email or Phone Number",
                hintStyle: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: TextFormField(
              controller: fullname,
              decoration: InputDecoration(
                hintText: "Full Name",
                hintStyle: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: TextFormField(
              controller: username,
              decoration: InputDecoration(
                hintText: "Username",
                hintStyle: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: TextFormField(
              controller: password,
              decoration: InputDecoration(
                suffixIcon: const Icon(Icons.visibility),
                label: const Text("Password"),
                hintText: "Password",
                hintStyle: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: TextFormField(
              controller: confirmpassword,
              decoration: InputDecoration(
                suffixIcon: const Icon(Icons.visibility),
                hintText: "Confirm Password",
                hintStyle: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
          const SizedBox(height: 25,),
          const MyButton(name: "Sign Up"),
          const SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Have an Account",
                style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                child:const Text(
                  "Sign In",
                  style: TextStyle(
                      fontFamily: "Skranji",
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>const SigninScreen()));
                },
              ),
            ],
          ),
          const SizedBox(height: 100,),
        ],
      ),
    );
  }
}
