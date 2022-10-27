// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:palanateui/screen/loginpage.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.25),
            child: Column(
              children: [
                IconButton(
                    onPressed: (() {}),
                    icon: Icon(
                      Icons.qr_code,
                      size: 45,
                      color: Colors.white,
                    )),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "RANGANG",
                  style: GoogleFonts.roboto(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          Text(
            "you personal task manager",
            style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white54),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.07,
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * .45),
            child: ElevatedButton(
                onPressed: (() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Login1()));
                }),
                child: Text(
                  "Start",
                  style: GoogleFonts.roboto(
                      fontSize: 14, fontWeight: FontWeight.w700),
                )),
          )
        ],
      ),
    );
  }
}
