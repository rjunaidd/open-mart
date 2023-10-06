import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RememberMe extends StatefulWidget {
  @override
  _RememberMeState createState() => _RememberMeState();
}

class _RememberMeState extends State<RememberMe> {
  bool rememberMe = false;

  @override
  void initState() {
    super.initState();
    _loadRememberMePreference();
  }

  _loadRememberMePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      rememberMe = prefs.getBool('rememberMe') ?? false;
    });
  }

  // Save the user's preference for "Remember Me" to SharedPreferences
  _saveRememberMePreference(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('rememberMe', value);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: rememberMe,
          onChanged: (newValue) {
            setState(() {
              rememberMe = newValue!;
              _saveRememberMePreference(rememberMe);
            });
          },
        ),
        Text("Remember Me" , style:  TextStyle(
            color: Colors.grey.shade900,
            fontSize: 16,
            fontWeight: FontWeight.normal),),
      ],
    );
  }
}
