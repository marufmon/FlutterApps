// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loveapp/page2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController name1Controller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://i.pinimg.com/originals/c7/9b/88/c79b88415e34dba4c55fa2ecfc0415bf.jpg"),
              fit: BoxFit.cover),
        ),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.only(bottom: 100),
                  child: Text(
                    "Love Calculator",
                    style: GoogleFonts.lobster(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        color: Colors.green),
                  )),
              Container(
                padding: const EdgeInsets.only(left: 25, right: 25),
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
                      hintText: "Girls name",
                      labelText: " Girls name",
                      hintStyle: const TextStyle(color: Colors.blue),
                      labelStyle: const TextStyle(color: Colors.blue),
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.green,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.teal)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.teal))),
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.only(left: 25, right: 25, bottom: 15),
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
                  controller: name1Controller,
                  decoration: InputDecoration(
                      hintText: "Boys name",
                      labelText: "Boys name",
                      hintStyle: const TextStyle(color: Colors.blue),
                      labelStyle: const TextStyle(color: Colors.blue),
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.green,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.teal)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.teal))),
                ),
              ),
              Container(
                height: 45,
                width: 200,
                child: ElevatedButton(
                    onPressed: (() {
                      if (_formKey.currentState!.validate()) {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Page2()));
                      }
                    }),
                    child: const Text("check")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
