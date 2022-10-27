import 'dart:math';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:palanateui/screen/loginpage3.dart';
import 'loginpage.dart';

class Login2 extends StatelessWidget {
  const Login2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
              top: -180,
              left: -20,
              child: Transform.rotate(
                angle: pi / 5,
                child: Container(
                  width: 480,
                  height: 450,
                  decoration: BoxDecoration(
                      color: Color(0xff8E8E93),
                      borderRadius: BorderRadius.circular(40)),
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create a Task and Assign it to\n Your Team Members",
                  style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 32,
                ),
                CustomeButton(
                  title: "Sign Up",
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Login3()));
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                CustomeButton(
                  isBlue: true,
                  title: "Login",
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Login3()));
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
