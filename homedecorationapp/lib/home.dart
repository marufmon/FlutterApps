// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homedecorationapp/screen/decorationlist.dart';

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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 1,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/welcome.jpg"), fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.45),
                  child: Text(
                    "Decoration App :)",
                    style: GoogleFonts.roboto(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Plese Login My App",
                  style: GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Search the Home Decoration Item",
                  style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.06,
                  margin: EdgeInsets.only(
                      bottom: 5, top: MediaQuery.of(context).size.height * .30),
                  child: MaterialButton(
                      height: 60,
                      minWidth: 200,
                      color: Colors.white38,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      onPressed: (() {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomeDecontionList()));
                      }),
                      child: Text(
                        " Start",
                        style: GoogleFonts.roboto(
                            fontSize: 14, fontWeight: FontWeight.w700),
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
