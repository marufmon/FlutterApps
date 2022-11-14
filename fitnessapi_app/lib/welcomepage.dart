// ignore_for_file: prefer_const_constructors

import 'package:fitnessapi_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .96,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://wallpaperaccess.com/full/1484341.jpg"),
                    fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.06,
                    margin: EdgeInsets.only(
                        bottom: 5,
                        top: MediaQuery.of(context).size.height * .88),
                    child: MaterialButton(
                        height: 60,
                        minWidth: 200,
                        color: Colors.white38,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        onPressed: (() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomePage()));
                        }),
                        child: Text(
                          "Start",
                          style: GoogleFonts.roboto(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
