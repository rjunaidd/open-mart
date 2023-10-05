import 'package:flutter/material.dart';
import 'package:open_mart/components/textfield.dart';
import 'package:open_mart/forgot_password.dart';
import 'package:open_mart/home_screen.dart';

import 'components/my_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'components/text.dart';
import 'signup_screen.dart';


class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String _message = "";
  bool isCheckedRememberMe = false;

  final String validUsername = "user";
  final String validPassword = "password";

  void _login(){
    String username = _usernameController.text;
    String password = _passwordController.text;

    if(username == validUsername && password == validPassword){
      setState(() {
        _message = "Login successful";
      });
    }

    else{
      setState(() {
        _message = 'Invalid username or password.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 80),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:const [
                    SizedBox(
                      height: 50,
                    ),
                    SimpeText(text: "Hi !",),
                    SimpeText(text: "Welcome")
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              const Padding(
                padding:  EdgeInsets.only(  left: 1 , right: 20),
                child: Text(
                  "Im waiting for you please enter your detail",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                      fontWeight: FontWeight.normal),
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: MyTextField(hintText: "Username Email or Phone Number", controller: _usernameController)
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: MyTextField(hintText: "Password",
                  controller: _passwordController,
                  obscureText: true,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: SizedBox(
                        height: 24.0,
                        width: 24.0,
                        child: Theme(
                          data: ThemeData(
                              unselectedWidgetColor: const Color(0xff00C8E8)),
                          child: Checkbox(
                              activeColor: const Color(0xff00C8E8),
                              value: isCheckedRememberMe,
                              onChanged: actionRemeberMe(isCheckedRememberMe)),
                        )),
                  ),
                  const SizedBox(width: 10.0),
                  Text("Remember Me",
                      style: TextStyle(
                        color: Colors.grey.shade900,
                        fontSize: 16,
                      )),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: InkWell(
                      child: Text(
                        "Forgot Password ?",
                        style: TextStyle(
                            color: Colors.grey.shade900,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotPassword())),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                child:const  MyButton(name: "Sign In"),
                onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) =>const HomeScreen())),
              ),
              const SizedBox(height: 60,),
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
                    width: 20,
                  ),
                  InkWell(
                    child:const Text(
                      "Sign Up",
                      style: TextStyle(
                          fontFamily: "Skranji",
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>const SignupScreen()));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  actionRemeberMe(bool value) {
    isCheckedRememberMe = value;
    SharedPreferences.getInstance().then(
      (prefs) {
        prefs.setBool("remember_me", value);
      },
    );
    setState(() {
      isCheckedRememberMe = value;
    });
  }
}
