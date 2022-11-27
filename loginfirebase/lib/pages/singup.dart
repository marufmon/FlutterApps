// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginfirebase/db/dbhelper.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final auth = FireBaseAuthiontacation();
  final GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.only(top: 60, left: 25, right: 25),
          child: Form(
            key: _formKey,
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
                      hintStyle: TextStyle(color: Colors.black),
                      labelStyle: TextStyle(color: Colors.black),
                      fillColor: Color.fromARGB(183, 158, 158, 158),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.blue,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.grey))),
                ),
                SizedBox(
                  height: 20,
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
                      color: Colors.blue,
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
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey)),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: ElevatedButton(
                    onPressed: (() {
                      FireBaseAuthiontacation().autont(
                          emailAddress: emailController.text,
                          password: passwordController.text);
                      if (_formKey.currentState!.validate()) {}
                    }),
                    child: Text(
                      "Sign up",
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
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

  bool isObsecure = false;
}
