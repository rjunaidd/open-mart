import 'package:flutter/material.dart';
import 'package:open_mart/home_screen.dart';

import 'Components/name_change_btn.dart';
import 'Components/name_field.dart';
class DisplayNameScreen extends StatefulWidget {
  const DisplayNameScreen({super.key});

  @override
  State<DisplayNameScreen> createState() => _DisplayNameScreenState();
}

class _DisplayNameScreenState extends State<DisplayNameScreen> {
  TextEditingController CurrentDispayName = TextEditingController();
  TextEditingController NewName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title:const Text("Change Display Name"),
            backgroundColor: Colors.teal,
          ),

          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Change Display Name" ,
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
                          NameField(
                            hintText: "Enter Display Name",
                            controller: CurrentDispayName,
                            label: "Enter Display Name",
// suffixIcon: Icons.ice_skating,

                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          NameField(
                              hintText: "Enter New Name",
                              controller:NewName ,
                              label: "Enter New Name"
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
                child:const NameChange(
                    namebtn: "Change Password"),
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
