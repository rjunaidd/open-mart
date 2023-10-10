import 'package:flutter/material.dart';
import 'package:open_mart/home_screen.dart';

import 'Component/password_btn_comp.dart';
import 'Component/password_field.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {

  TextEditingController CurrentPassword = TextEditingController();
  TextEditingController NewPassword = TextEditingController();
  TextEditingController ConfirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title:const Text("Change Password"),
            backgroundColor: Colors.teal,
          ),
          
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const Text("Change Password" ,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold
              ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.teal.shade50
                  ),
                  height: 300,
                  width: 370,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40 , right: 40),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          PasswordField(
                            hintText: "Enter Current Password",
                            controller: CurrentPassword,
                            label: "Enter Current Password",
                            // suffixIcon: Icons.ice_skating,

                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          PasswordField(
                              hintText: "Enter New Password",
                              controller:NewPassword ,
                              label: "Enter New Password"
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          PasswordField(
                              hintText: " Password",
                              controller:ConfirmPassword ,
                              label: " Password"
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 40,
              ),
              InkWell(
                child:const PasswordChangeB(
                    passwordbtn: "Change Password"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>const HomeScreen()));
                },
              ),
            ],
          ),
        ),
    );
  }
}
