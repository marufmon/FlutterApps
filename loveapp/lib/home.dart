// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loveapp/model/data.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController name1Controller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  String link =
      "https://love-calculator.p.rapidapi.com/getPercentage?sname=sname&fname=fname";
  List<LoveCal> allData = [];
  late LoveCal loveCal;
  bool? isLoading;
  fetchData() async {
    var response = await http.get(Uri.parse(link));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)["result"];
      for (var i in data) {
        loveCal = LoveCal(
            fname: i["fname"],
            sname: i["sname"],
            result: i["result"],
            percentange: i["percentage"]);
        setState(() {
          allData.add(loveCal);
        });
      }
    }
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

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
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                              content: Container(
                            padding: EdgeInsets.all(10.0),
                            height: 150,
                            width: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.favorite,
                                  size: 55,
                                  color: Colors.red,
                                )
                              ],
                            ),
                          )),
                        );
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
