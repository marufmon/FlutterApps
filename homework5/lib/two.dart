// ignore_for_file: prefer_const_constructors

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homework5/three.dart';
import 'package:image_picker/image_picker.dart';

class Two extends StatefulWidget {
  const Two({super.key});

  @override
  State<Two> createState() => _TwoState();
}

class _TwoState extends State<Two> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController nameController = TextEditingController();
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
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            color: Colors.grey,
            height: double.infinity,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: (() {
                      Navigator.of(context).pop();
                    }),
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Colors.black,
                    )),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.teal, width: 3)),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/288020853_1394142407675714_3692136361548968487_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=174925&_nc_eui2=AeFgtWCvRQKtLXDpShSFKcwVV9Zi_wMRwmlX1mL_AxHCace06YQgg0E1zm7r4gNDmxdW6zIC0v4cAEYWKA6kSWYr&_nc_ohc=0B_CcN8fMz0AX9xwxXo&_nc_ht=scontent.fdac31-1.fna&oh=00_AT_j6jXEsmGfBz_52iXlfOX_Q9m5baQThcvPL2AjZXQ0ZA&oe=63547269'),
                          radius: 81,
                        ),
                      ),
                      Positioned(
                        top: 137,
                        left: 100,
                        bottom: 15,
                        child: Container(
                          child: _image == null
                              ? IconButton(
                                  onPressed: () {
                                    Camera();
                                  },
                                  icon: Icon(Icons.camera_alt_sharp))
                              : Image.file(File(_image!.path)),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Form(
                  key: _formKey,
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Name is emty";
                            }

                            if (value.length < 3) {
                              return "Name is too short";
                            }
                            if (value.length > 8) {
                              return "Name is too Long";
                            }
                          },
                          controller: nameController,
                          decoration: InputDecoration(
                              hintText: "Enter your name",
                              labelText: "Enter your name",
                              hintStyle: TextStyle(color: Colors.black),
                              labelStyle: TextStyle(color: Colors.black),
                              fillColor: Colors.white,
                              filled: true,
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.green,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.black)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.black))),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "password is empty";
                            }
                            if (value.length < 6) {
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
                            hintStyle: TextStyle(color: Colors.black),
                            labelStyle: TextStyle(color: Colors.black),
                            fillColor: Colors.white,
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
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.black)),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: ElevatedButton(
                              onPressed: (() {
                                if (_formKey.currentState!.validate()) {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Three()));
                                }
                              }),
                              child: Text(
                                "Login",
                                style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Already Login?",
                                style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black38)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  bool isObsecure = false;
}
