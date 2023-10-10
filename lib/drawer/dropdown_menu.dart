import 'package:flutter/material.dart';
import '../Change Email/change_email.dart';
import '../Change Password/password_change.dart';
import '../Name Display/display_name_screen.dart';
import '../Number Change/display_name_change.dart';
import '../display picture/display_picture_screen.dart';

class Dropdownbutton extends StatelessWidget {
  const Dropdownbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        DropdownButton<String>(
          hint:const Text('Edit Account' , style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: "Lexend"),),
          onChanged: (String? selectedItem) {
            if (selectedItem == 'Change Display Picture') {
              Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const DisplayPictureScreen(),
                  ),
                  );
            } else if (selectedItem == 'Change Display Name') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>const DisplayNameScreen()),
              );
            } else if (selectedItem == 'Change Number') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>const ChangeNumberScreen()),
              );
            } else if (selectedItem == 'Change Email') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChangeEmailScreen()),
              );
            } else if (selectedItem == 'Change Password') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>const ChangePasswordScreen()),
              );
            }
          },
          items: <String>[
            'Change Display Picture' ,
            'Change Display Name',
            'Change Number',
            'Change Email',
            'Change Password',
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }
}
