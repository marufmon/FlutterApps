// ignore_for_file: prefer_const_constructors, sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homework5/three.dart';
import 'package:homework5/two.dart';

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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height * 1.00,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/288020853_1394142407675714_3692136361548968487_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=174925&_nc_eui2=AeFgtWCvRQKtLXDpShSFKcwVV9Zi_wMRwmlX1mL_AxHCace06YQgg0E1zm7r4gNDmxdW6zIC0v4cAEYWKA6kSWYr&_nc_ohc=0B_CcN8fMz0AX9xwxXo&_nc_ht=scontent.fdac31-1.fna&oh=00_AT_j6jXEsmGfBz_52iXlfOX_Q9m5baQThcvPL2AjZXQ0ZA&oe=63547269"),
                fit: BoxFit.cover)),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: (() {
                    Navigator.of(context).pop();
                  }),
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Colors.black,
                    ),
                  )),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.2605),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25)),
                    color: Colors.white),
                height: MediaQuery.of(context).size.height * 0.67599,
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
                        height: 30,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: ElevatedButton(
                          onPressed: (() {
                            if (_formKey.currentState!.validate()) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Two()));
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
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Two()));
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
