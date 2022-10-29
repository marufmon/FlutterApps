// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:palanateui/screen/loginpage.dart';
import 'package:palanateui/weiged/const.dart';

class TeamInfoDemo extends StatefulWidget {
  const TeamInfoDemo({super.key});

  @override
  State<TeamInfoDemo> createState() => _TeamInfoDemoState();
}

class _TeamInfoDemoState extends State<TeamInfoDemo> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController nameController1 = TextEditingController();
  final TextEditingController nameController2 = TextEditingController();
  final TextEditingController nameController3 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: cardColor,
        body: Container(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: ListTile(
                    leading: Text(
                      "Add New Project",
                      style:
                          GoogleFonts.roboto(fontSize: 16, color: Colors.white),
                    ),
                    trailing: IconButton(
                        onPressed: (() {
                          Navigator.of(context).pop();
                        }),
                        icon: Icon(
                          Icons.clear,
                          size: 25,
                          color: Colors.white,
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Project Name",
                    style:
                        GoogleFonts.roboto(fontSize: 16, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
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
                        hintText: "Enter your project name",
                        labelText: "Enter your project name",
                        hintStyle: TextStyle(color: Colors.black),
                        labelStyle: TextStyle(color: Colors.black),
                        fillColor: Color.fromARGB(183, 158, 158, 158),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.radio,
                          color: Colors.green,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Assign to",
                    style:
                        GoogleFonts.roboto(fontSize: 16, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Name is emty";
                      }

                      if (value.length < 3) {
                        return "Name is too short";
                      }
                      if (value.length > 16) {
                        return "Name is too Long";
                      }
                    },
                    controller: nameController1,
                    decoration: InputDecoration(
                        hintText: "Select your team",
                        labelText: "slect your team",
                        hintStyle: TextStyle(color: Colors.black),
                        labelStyle: TextStyle(color: Colors.black),
                        fillColor: Color.fromARGB(183, 158, 158, 158),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.person_add_alt,
                          color: Colors.green,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Progress",
                    style:
                        GoogleFonts.roboto(fontSize: 16, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Name is emty";
                      }

                      if (value.length < 3) {
                        return "Name is too short";
                      }
                      if (value.length > 16) {
                        return "Name is too Long";
                      }
                    },
                    controller: nameController2,
                    decoration: InputDecoration(
                        hintText: "Ongoing",
                        labelText: "Ongoing",
                        hintStyle: TextStyle(color: Colors.black),
                        labelStyle: TextStyle(color: Colors.black),
                        fillColor: Color.fromARGB(183, 158, 158, 158),
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
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Timeline",
                    style:
                        GoogleFonts.roboto(fontSize: 16, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Name is emty";
                      }

                      if (value.length < 3) {
                        return "Name is too short";
                      }
                      if (value.length > 16) {
                        return "Name is too Long";
                      }
                    },
                    controller: nameController3,
                    decoration: InputDecoration(
                        hintText: "2 March 2022",
                        labelText: "2 march 2022",
                        hintStyle: TextStyle(color: Colors.black),
                        labelStyle: TextStyle(color: Colors.black),
                        fillColor: Color.fromARGB(183, 158, 158, 158),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.calendar_month,
                          color: Colors.green,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black))),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.link,
                    size: 30,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Attched File",
                    style:
                        GoogleFonts.roboto(fontSize: 16, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CustomeButton(
                    title: "Save",
                    onTap: () {
                      if (_formKey.currentState!.validate()) {}
                    },
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
