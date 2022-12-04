// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, no_leading_underscores_for_local_identifiers, await_only_futures, use_key_in_widget_constructors, must_be_immutable

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class UpdateCourseFee extends StatefulWidget {
  String documentId, courseName, courseFee, img;
  UpdateCourseFee(this.documentId, this.courseName, this.courseFee, this.img);
  @override
  State<UpdateCourseFee> createState() => _UpdateCourseFeeState();
}

class _UpdateCourseFeeState extends State<UpdateCourseFee> {
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

  updateData(documentId) async {
    if (_courseImage == null) {
      CollectionReference _course =
          await FirebaseFirestore.instance.collection('courses');
      _course.add(({
        'course_name': courseFeeController.text,
        'course_fee': addCourseFeeController.text,
        'img': widget.img
      }));
    } else {
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
  }

  @override
  void initState() {
    super.initState();
    courseFeeController.text = widget.courseName;
    addCourseFeeController.text = widget.courseFee;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Update Course Details",
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
                    if (value.length > 8) {
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
                        ? Stack(
                            children: [
                              Image.network(
                                widget.img,
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                  child: IconButton(
                                      onPressed: (() {
                                        choosenImageFromCG();
                                      }),
                                      icon: Icon(
                                        Icons.camera,
                                        size: 25,
                                        color: Colors.blue,
                                      )))
                            ],
                          )
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
                      updateData(widget.documentId);
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          content: Container(
                            height: 50,
                            child: Center(
                              child: Text(
                                'Successfully updated',
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
                    "Update",
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
