// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, no_leading_underscores_for_local_identifiers, await_only_futures
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class AddCourseFee extends StatefulWidget {
  const AddCourseFee({super.key});

  @override
  State<AddCourseFee> createState() => _AddCourseFeeState();
}

class _AddCourseFeeState extends State<AddCourseFee> {
  final courseFeeController = TextEditingController();
  final addCourseFeeController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  XFile? _courseImage;
  String? _imgUrl;
  choosenImageFromCG() async {
    ImagePicker _picker = ImagePicker();
    _courseImage = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {});
  }

  sendData() async {
    File _imageFile = File(_courseImage!.path);
    FirebaseStorage _storage = await FirebaseStorage.instance;
    UploadTask _uploadTask =
        _storage.ref('courses').child(_courseImage!.name).putFile(_imageFile);
    TaskSnapshot _snapshot = await _uploadTask;
    _imgUrl = await _snapshot.ref.getDownloadURL();
    CollectionReference _course =
        await FirebaseFirestore.instance.collection('courses');
    _course.add(({
      'course_name': courseFeeController.text,
      'course_fee': addCourseFeeController.text,
      'img': _imgUrl
    }));
    courseFeeController.clear();
    addCourseFeeController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Add Course Details",
            style: GoogleFonts.roboto(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        resizeToAvoidBottomInset: false,
        body: Container(
          padding: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 50),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Course name is emty";
                    }

                    if (value.length < 3) {
                      return "Course name is too short";
                    }
                    if (value.length > 16) {
                      return "Course name is too Long";
                    }
                  },
                  controller: courseFeeController,
                  decoration: InputDecoration(
                      hintText: "Enter your Course name",
                      labelText: "Enter your Course name",
                      hintStyle: TextStyle(color: Colors.black),
                      labelStyle: TextStyle(color: Colors.black),
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.title,
                        color: Colors.black,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.grey))),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Course fee is emty";
                    }

                    if (value.length > 11) {
                      return "Course fee is too Long";
                    }
                  },
                  controller: addCourseFeeController,
                  decoration: InputDecoration(
                      hintText: "Enter your Course fees",
                      labelText: "Enter your Course fees",
                      hintStyle: TextStyle(color: Colors.black),
                      labelStyle: TextStyle(color: Colors.black),
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.calendar_today,
                        color: Colors.black,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.grey))),
                ),
                SizedBox(height: 50),
                Expanded(
                    child: _courseImage == null
                        ? IconButton(
                            onPressed: (() {
                              choosenImageFromCG();
                            }),
                            icon: Icon(
                              Icons.camera,
                              size: 35,
                            ))
                        : Image.file(File(_courseImage!.path))),
                SizedBox(
                  height: 50,
                ),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  color: Colors.cyan,
                  height: 45,
                  minWidth: 130,
                  onPressed: (() {
                    if (_formKey.currentState!.validate()) {
                      sendData();
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          content: Container(
                            height: 50,
                            child: Center(
                              child: Text(
                                'Successfully added',
                                style: GoogleFonts.lobster(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      );
                    }
                  }),
                  child: Text(
                    "Add",
                    style: GoogleFonts.roboto(fontSize: 16),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
