// ignore_for_file: prefer_const_constructors, sort_child_properties_last, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homework4/mydrawer.dart';
import 'package:homework4/page1.dart';
import 'package:homework4/page2.dart';

// ignore: camel_case_types
class Home_Page extends StatefulWidget {
  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: MyDrawer(),
      key: _scaffoldKey,
      body: Container(
        height: MediaQuery.of(context).size.height * 1.00,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/288020853_1394142407675714_3692136361548968487_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=174925&_nc_eui2=AeFgtWCvRQKtLXDpShSFKcwVV9Zi_wMRwmlX1mL_AxHCace06YQgg0E1zm7r4gNDmxdW6zIC0v4cAEYWKA6kSWYr&_nc_ohc=QbJrP20tuIcAX9MujzS&_nc_ht=scontent.fdac31-1.fna&oh=00_AT_yEvuq7Mh7MdESPzSNBFYjyMTCBZMbmL2E7i51O8g_Jw&oe=634E83A9"),
                fit: BoxFit.cover)),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: (() {
                    _scaffoldKey.currentState!.openDrawer();
                  }),
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Icon(
                      Icons.menu,
                      size: 30,
                      color: Colors.black,
                    ),
                  )),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.25),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25)),
                    color: Colors.white),
                height: MediaQuery.of(context).size.height * 0.6865,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Create your account",
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87)),
                      Text("Start you carrer with us :)",
                          style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black38)),
                      SizedBox(
                        height: 10,
                      ),
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
                            hintStyle: TextStyle(color: Colors.blue),
                            labelStyle: TextStyle(color: Colors.blue),
                            fillColor: Color.fromARGB(183, 158, 158, 158),
                            filled: true,
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.green,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.teal)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.teal))),
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
                            hintText: "Enter your email",
                            labelText: "Enter your email",
                            hintStyle: TextStyle(color: Colors.blue),
                            labelStyle: TextStyle(color: Colors.blue),
                            fillColor: Color.fromARGB(183, 158, 158, 158),
                            filled: true,
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.green,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.teal)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.teal))),
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
                          hintText: "Enter your password",
                          labelText: "password",
                          hintStyle: TextStyle(color: Colors.blue),
                          labelStyle: TextStyle(color: Colors.blue),
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
                                  ? Icons.visibility
                                  : Icons.visibility_off)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.teal)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.teal)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.85,
                        child: ElevatedButton(
                          onPressed: (() {
                            if (!_formKey.currentState!.validate()) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Page1()));
                            }
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
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Already have an account?",
                              style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black38)),
                          Container(
                            child: ElevatedButton(
                                child: Text("Sign in",
                                    style: GoogleFonts.roboto(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                                onPressed: (() {
                                  if (_formKey.currentState!.validate()) {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Page2()));
                                  }
                                })),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  bool isObsecure = false;
}
