import 'dart:io';

import 'package:flutter/material.dart';
import 'components/button_comp.dart';
import 'package:image_picker/image_picker.dart';


class DisplayPictureScreen extends StatefulWidget {
  const DisplayPictureScreen({super.key});

  @override
  State<DisplayPictureScreen> createState() => _DisplayPictureScreenState();
}

class _DisplayPictureScreenState extends State<DisplayPictureScreen> {

  File? _images;
  Future<void> _pickimage() async{
    final pickFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if(pickFile != null){
      setState(() {
        _images = File(pickFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 40 , right: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const Text(
                "Change Avatar",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(
                height: 50,
              ),
             CircleAvatar(
               radius: 100,
               backgroundImage: _images != null ? FileImage(_images!) : null,
               child: _images == null
               ? Icon(Icons.person)
               : null,
             ),
              const SizedBox(
                height: 100,
              ),
             InkWell(
                 child: ButtonCom(title: "Choose Picture"),
             onTap: (){
                   _pickimage();
             },
             ),
              const SizedBox(
                height: 30,
              ),
              ButtonCom(title: "Upload Picture"),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                  child: ButtonCom(title: "Remove Picture"),
              onTap: (){
                    setState(() {
                      _images = null;
                    });
              },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
