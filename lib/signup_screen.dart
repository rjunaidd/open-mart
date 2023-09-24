import 'package:flutter/material.dart';
import 'package:open_mart/components/my_button.dart';
import 'package:open_mart/components/textfield.dart';
import 'package:open_mart/home_screen.dart';

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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics:const NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50,),
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
            const Padding(
              padding:  EdgeInsets.only(right: 110),
              child:   Text(
                "Let's create an account",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: MyTextField(hintText: "Email or Phone Number", controller: phoneNumber),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: MyTextField(hintText: "Full Name", controller: fullname)
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: MyTextField(hintText: "Username", controller: username)
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: MyTextField(hintText: "Password", controller: password)
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: MyTextField(hintText: "Confirm Password", controller: confirmpassword)
            ),
            const SizedBox(height: 25,),
            InkWell(
                child: const MyButton(name: "Sign Up"),
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) =>const HomeScreen())),
            ),
            const SizedBox(height: 80,),
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
                  width: 5,
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
            const SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}
