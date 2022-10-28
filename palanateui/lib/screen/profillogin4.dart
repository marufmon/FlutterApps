// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:palanateui/screen/loginpage.dart';
import 'package:palanateui/screen/profillogin5.dart';

class Login11 extends StatefulWidget {
  const Login11({super.key});

  @override
  State<Login11> createState() => _Login11State();
}

class _Login11State extends State<Login11> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController passwordController = TextEditingController();
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
                          size: 30,
                          color: Colors.white,
                        ),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 105, bottom: 25),
                  child: Text(
                    "Your team Code",
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
                    " Team code",
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
                    hintText: "e.g JFGTY",
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
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(top: 150),
                  child: CustomeButton(
                    title: "Continue",
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Login12()));
                      }
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

  bool isObsecure = false;
}
