// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers, await_only_futures
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resisterfirebase/blog/details.dart';
import 'package:resisterfirebase/home.dart';

class ResistePage extends StatefulWidget {
  const ResistePage({super.key});

  @override
  State<ResistePage> createState() => _ResistePageState();
}

class _ResistePageState extends State<ResistePage> {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final ageController = TextEditingController();
  final addressController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  Future addData() async {
    CollectionReference _users =
        await FirebaseFirestore.instance.collection("resister");
    _users.add(({
      "name": nameController.text,
      "phone": phoneController.text,
      "age": ageController.text,
      "address": addressController.text,
    }));
    nameController.clear();
    phoneController.clear();
    ageController.clear();
    addressController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
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
                      return "Number is emty";
                    }

                    if (value.length > 11) {
                      return "Name is too Long";
                    }
                  },
                  controller: phoneController,
                  decoration: InputDecoration(
                      hintText: "Enter your phone number",
                      labelText: "Enter your phone number",
                      hintStyle: TextStyle(color: Colors.black),
                      labelStyle: TextStyle(color: Colors.black),
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.call,
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
                      return "Number is emty";
                    }

                    if (value.length > 2) {
                      return "Name is too Long";
                    }
                  },
                  controller: ageController,
                  decoration: InputDecoration(
                      hintText: "Your age",
                      labelText: "Your age",
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
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Number is emty";
                    }

                    if (value.length > 50) {
                      return "Name is too Long";
                    }
                  },
                  controller: addressController,
                  decoration: InputDecoration(
                      hintText: "Your address",
                      labelText: "Your address",
                      hintStyle: TextStyle(color: Colors.black),
                      labelStyle: TextStyle(color: Colors.black),
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.home,
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
                  height: 40,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: MaterialButton(
                    color: Colors.grey,
                    height: 55,
                    minWidth: 170,
                    onPressed: (() {
                      addData();
                      if (_formKey.currentState!.validate()) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomePage()));
                      }
                    }),
                    child: Text(
                      "Resister",
                      style: GoogleFonts.roboto(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
