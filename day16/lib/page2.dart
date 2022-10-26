// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:io';

import 'package:day16/three.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  XFile? _image;

  Camera() async {
    final ImagePicker _picker = ImagePicker();
    _image = await _picker.pickImage(source: ImageSource.camera);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: Container(
        margin: EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "email is empty";
                  }
                  if (!value.contains("@")) {
                    return "email feild requred";
                  }
                },
                controller: emailController,
                decoration: InputDecoration(
                    hintText: "Enter your email",
                    labelText: "Enter your email",
                    hintStyle: TextStyle(color: Colors.blue),
                    labelStyle: TextStyle(color: Colors.blue),
                    fillColor: Color.fromARGB(183, 158, 158, 158),
                    filled: true,
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.green,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.teal)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.teal))),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "password is empty";
                  }
                  if (value.length < 3) {
                    return "password is too short";
                  }
                  if (value.length > 8) {
                    return "password is too Long";
                  }
                },
                maxLines: 1,
                keyboardType: TextInputType.text,
                obscuringCharacter: "*",
                obscureText: isObsecure,
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: "Enter your password",
                  labelText: "password",
                  hintStyle: TextStyle(color: Colors.blue),
                  labelStyle: TextStyle(color: Colors.blue),
                  fillColor: Color.fromARGB(183, 158, 158, 158),
                  filled: true,
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.green,
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isObsecure = !isObsecure;
                        });
                      },
                      icon: Icon(isObsecure
                          ? Icons.visibility_off
                          : Icons.visibility)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.teal)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.teal)),
                ),
              ),
              Expanded(
                  child: _image == null
                      ? IconButton(
                          onPressed: () {
                            Camera();
                          },
                          icon: Icon(Icons.camera_alt_sharp))
                      : Image.file(File(_image!.path))),
              Container(
                margin: EdgeInsets.only(left: 250),
                child: FloatingActionButton(
                  onPressed: (() {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Three()));
                  }),
                  child: Icon(
                    Icons.add,
                    size: 25,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  bool isObsecure = false;
}
