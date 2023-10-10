import 'package:flutter/material.dart';

import 'package:open_mart/home_screen.dart';

import 'components/email_btn_comp.dart';
import 'components/email_textfield_comp.dart';

class ChangeEmailScreen extends StatefulWidget {
   ChangeEmailScreen({super.key});


  @override
  State<ChangeEmailScreen> createState() => _ChangeEmailScreenState();
}

class _ChangeEmailScreenState extends State<ChangeEmailScreen> {
  TextEditingController CurrentEmail = TextEditingController();
  TextEditingController EnterNewEmail = TextEditingController();
  TextEditingController EnterPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Change Email"),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
             const SizedBox(
                height: 100,
              ),
              const Text("Change Email" ,
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
                          ChangeEmail(
                            hintText: "Current email",
                            controller: CurrentEmail,
                            label: "current email",
                            // suffixIcon: Icons.ice_skating,

                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          ChangeEmail(
                              hintText: "Enter New Email",
                              controller:EnterNewEmail ,
                              label: "Enter New Email"
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          ChangeEmail(
                              hintText: " Password",
                              controller:EnterPassword ,
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
                  child: EmailButtonC(emailbtn: "Change Email"),
              onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
