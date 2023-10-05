import 'package:flutter/material.dart';
import 'package:open_mart/components/my_button.dart';
import 'package:open_mart/components/textfield.dart';

import 'components/text.dart';
import 'signin_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmpasswordController = TextEditingController();
  TextEditingController _fullnameController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  String _message = "";

  void _signup(){
    String phonenumber = _phoneNumberController.text;
    String password = _passwordController.text;
    String confirmPassword = _confirmpasswordController.text;
    String fullName = _fullnameController.text;
    String userName = _usernameController.text;
    if(
    phonenumber.isEmpty || fullName.isEmpty
        || userName.isEmpty || password.isEmpty
        || confirmPassword.isEmpty){
      setState(() {
        _message = "Please fill in all field";
      });
    }
    else if(password != confirmPassword){
      setState(() {
        _message = "Paasword does not match";
      });
    }
    else{
      setState(() {
        _message = "Signup Successful";
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
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
            const  Padding(
                padding: const EdgeInsets.only(left: 1, right: 145),
                child: Text(
                "Let's create an account",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
            ),
              ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: MyTextField(hintText: "Email or Phone Number", controller: _phoneNumberController),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: MyTextField(hintText: "Full Name", controller: _fullnameController,)
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: MyTextField(
                  hintText: "Username",
                  controller: _usernameController
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: MyTextField(
                hintText:"Password" ,
                obscureText: true,
                controller: _passwordController ,
               suffixIcon: Icons.visibility,)
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: MyTextField(
                  hintText: "Confirm Password",
                  controller: _confirmpasswordController,
                obscureText: true,
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
      ),
    );
  }
}