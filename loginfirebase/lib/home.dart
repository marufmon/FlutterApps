// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginfirebase/pages/singup.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 1,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2017/01/22/19/12/pizza-2000600_960_720.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.06,
                  margin: EdgeInsets.only(
                      bottom: 5, top: MediaQuery.of(context).size.height * .88),
                  child: MaterialButton(
                      height: 60,
                      minWidth: 200,
                      color: Colors.white38,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      onPressed: (() {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SingUp()));
                      }),
                      child: Text(
                        "Start",
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
