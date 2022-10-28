// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:palanateui/screen/loginpage.dart';
import 'package:palanateui/screen/loginpage5.dart';

class One extends StatefulWidget {
  const One({super.key});

  @override
  State<One> createState() => _OneState();
}

class _OneState extends State<One> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        resizeToAvoidBottomInset: false,
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
                          Icons.clear,
                          size: 25,
                          color: Colors.white,
                        ),
                      )),
                  trailing: TextButton(
                      onPressed: (() {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (contex) => Login6()));
                      }),
                      child: Text(
                        "SignUp",
                        style: GoogleFonts.roboto(
                            fontSize: 16, color: Colors.white),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 10),
                  child: Text(
                    "Your email address",
                    style:
                        GoogleFonts.roboto(fontSize: 16, color: Colors.white),
                  ),
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
                      hintText: "Enter your email",
                      labelText: "Enter your email",
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
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 10),
                  child: Text(
                    "Enter your password",
                    style:
                        GoogleFonts.roboto(fontSize: 16, color: Colors.white),
                  ),
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
                    hintStyle: TextStyle(color: Colors.black),
                    labelStyle: TextStyle(color: Colors.black),
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
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black)),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                CustomeButton(
                  title: "Sign In",
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Login6()));
                    }
                  },
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 75),
                  child: TextButton(
                      onPressed: (() {}),
                      child: Text(
                        "forget your password",
                        style: GoogleFonts.roboto(
                            fontSize: 16, color: Colors.white),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool isObsecure = false;
}
