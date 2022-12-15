// ignore_for_file: unused_import

import 'dart:convert';

import 'package:e_commerce_app/nav_bar/home_nav.dart';
import 'package:e_commerce_app/nav_bar/order_page.dart';
import 'package:e_commerce_app/widget/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  bool isLoading = false;

  getLogin() async {
    try {
      setState(() {
        isLoading = true;
      });

      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();

      var link = '${baseUrl}sign-in';

      var map = Map<String, dynamic>();
      map['email'] = emailController.text.toString();
      map['password'] = passwordController.text.toString();

      var response = await http.post(Uri.parse(link), body: map);

      var data = jsonDecode(response.body);

      setState(() {
        isLoading = false;
      });

      if (data['access_token'] != null) {
        sharedPreferences.setString('token', data['access_token']);

        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => HomeNav(),
            ),
            (route) => false);
      } else {
        showInToast('Email or Password does not match');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ModalProgressHUD(
        inAsyncCall: isLoading == true,
        blur: 0.5,
        opacity: 0.5,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            padding: EdgeInsets.only(top: 190, left: 20, right: 20),
            height: MediaQuery.of(context).size.height * 1.00,
            width: double.infinity,
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: GoogleFonts.lobster(fontSize: 35),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Please sign in too continue",
                    style: GoogleFonts.lobster(fontSize: 20, letterSpacing: 2),
                  ),
                  SizedBox(
                    height: 30,
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
                        hintStyle: GoogleFonts.lobster(
                            color: Colors.black, fontSize: 16),
                        labelStyle: GoogleFonts.lobster(color: Colors.black),
                        fillColor: Colors.white,
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.grey,
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
                    obscureText: isObsicure,
                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: "Enter your password",
                      labelText: "password",
                      hintStyle: GoogleFonts.lobster(
                          color: Colors.black, fontSize: 16),
                      labelStyle: GoogleFonts.lobster(color: Colors.black),
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isObsicure = !isObsicure;
                            });
                          },
                          icon: Icon(isObsicure
                              ? Icons.visibility
                              : Icons.visibility_off)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.black)),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      height: 55,
                      minWidth: 230,
                      color: Colors.green,
                      onPressed: (() {
                        if (_formKey.currentState!.validate()) {
                          getLogin();
                        } else {
                          print('Something is wrong. Try again');
                        }
                      }),
                      child: Text(
                        "Sign in",
                        style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: TextButton(
                      onPressed: (() {}),
                      child: Text(
                        "forget password",
                        style: GoogleFonts.lobster(
                            fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Don't have an account?",
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black38,
                              letterSpacing: 2)),
                      Container(
                        child: TextButton(
                            child: Text("Sign up",
                                style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green)),
                            onPressed: (() {})),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool isObsicure = true;
}
