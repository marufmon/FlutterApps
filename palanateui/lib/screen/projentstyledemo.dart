// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:palanateui/screen/loginpage.dart';
import 'package:palanateui/weiged/const.dart';

class ProjectStyleDemo extends StatefulWidget {
  const ProjectStyleDemo({super.key});

  @override
  State<ProjectStyleDemo> createState() => _ProjectStyleDemoState();
}

class _ProjectStyleDemoState extends State<ProjectStyleDemo> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController nameController = TextEditingController();
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
                  padding: const EdgeInsets.only(top: 40),
                  child: ListTile(
                    leading: Text(
                      "Add Tags",
                      style:
                          GoogleFonts.roboto(fontSize: 18, color: Colors.white),
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
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 25),
                  child: Text(
                    "Project Name",
                    style:
                        GoogleFonts.roboto(fontSize: 16, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 25, right: 15),
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
                        hintText: "Selecte your team",
                        labelText: "Selecte your team",
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
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Color",
                    style:
                        GoogleFonts.roboto(fontSize: 18, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.circle,
                        size: 70,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.circle,
                        size: 70,
                        color: Colors.black,
                      ),
                      Icon(
                        Icons.circle,
                        size: 70,
                        color: Colors.blue,
                      ),
                      Icon(
                        Icons.circle,
                        size: 70,
                        color: Colors.purple,
                      ),
                      Icon(
                        Icons.circle,
                        size: 70,
                        color: Colors.pink,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.circle,
                        size: 70,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.circle,
                        size: 70,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.circle,
                        size: 70,
                        color: Colors.teal,
                      ),
                      Icon(
                        Icons.circle,
                        size: 70,
                        color: Colors.cyan,
                      ),
                      Icon(
                        Icons.circle,
                        size: 70,
                        color: Colors.brown,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 50, right: 15),
                  child: CustomeButton(
                    title: "Done",
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
