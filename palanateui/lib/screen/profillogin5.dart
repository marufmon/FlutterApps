// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:palanateui/screen/loginpage.dart';

class Login12 extends StatefulWidget {
  const Login12({super.key});

  @override
  State<Login12> createState() => _Login12State();
}

class _Login12State extends State<Login12> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: Container(
          padding: EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height * 1.00,
          width: double.infinity,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: IconButton(
                      onPressed: (() {
                        Navigator.of(context).pop();
                      }),
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 0, bottom: 15),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 25,
                          color: Colors.white,
                        ),
                      )),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueAccent,
                          ),
                          height: 7,
                          width: 25,
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.lightBlue,
                          ),
                          height: 7,
                          width: 25,
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.lightBlue,
                          ),
                          height: 7,
                          width: 25,
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.lightBlue,
                          ),
                          height: 7,
                          width: 25,
                        ),
                        Container(
                          margin: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.lightBlue,
                          ),
                          height: 7,
                          width: 25,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70, bottom: 25),
                  child: Text(
                    "Invite your team members",
                    style:
                        GoogleFonts.roboto(fontSize: 18, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 2),
                  child: Text(
                    " Email members",
                    style:
                        GoogleFonts.roboto(fontSize: 16, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
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
                      hintText: "Types an email address",
                      labelText: "Types an email address",
                      hintStyle: TextStyle(color: Colors.black),
                      labelStyle: TextStyle(color: Colors.black),
                      fillColor: Color.fromARGB(183, 158, 158, 158),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.email,
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
                Container(
                  margin: EdgeInsets.only(top: 150),
                  child: CustomeButton(
                    title: "Continue",
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
