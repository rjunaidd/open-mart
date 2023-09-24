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
<<<<<<< HEAD
        physics:const NeverScrollableScrollPhysics(),
=======
        physics: NeverScrollableScrollPhysics(),
>>>>>>> 1a114bc7059b1b566e2e887395c78608729dd927
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
<<<<<<< HEAD
            const Padding(
              padding:  EdgeInsets.only(right: 110),
              child:   Text(
                "Let's create an account",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
=======
            const  Text(
              "Let's create an account",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
>>>>>>> 1a114bc7059b1b566e2e887395c78608729dd927
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
<<<<<<< HEAD
              child: MyTextField(hintText: "Email or Phone Number", controller: phoneNumber),
=======
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
>>>>>>> 1a114bc7059b1b566e2e887395c78608729dd927
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
<<<<<<< HEAD
              child: MyTextField(hintText: "Full Name", controller: fullname)
=======
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
>>>>>>> 1a114bc7059b1b566e2e887395c78608729dd927
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
<<<<<<< HEAD
              child: MyTextField(hintText: "Username", controller: username)
=======
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
>>>>>>> 1a114bc7059b1b566e2e887395c78608729dd927
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
<<<<<<< HEAD
              child: MyTextField(hintText: "Password", controller: password)
=======
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
>>>>>>> 1a114bc7059b1b566e2e887395c78608729dd927
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
<<<<<<< HEAD
              child: MyTextField(hintText: "Confirm Password", controller: confirmpassword)
            ),
            const SizedBox(height: 25,),
            InkWell(
                child: const MyButton(name: "Sign Up"),
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) =>const HomeScreen())),
            ),
            const SizedBox(height: 80,),
=======
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
>>>>>>> 1a114bc7059b1b566e2e887395c78608729dd927
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
<<<<<<< HEAD
                  width: 5,
=======
                  width: 20,
>>>>>>> 1a114bc7059b1b566e2e887395c78608729dd927
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
<<<<<<< HEAD
            const SizedBox(height: 50,),
=======
            const SizedBox(height: 100,),
>>>>>>> 1a114bc7059b1b566e2e887395c78608729dd927
          ],
        ),
      ),
    );
  }
}
