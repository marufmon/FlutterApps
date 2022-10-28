import 'dart:math';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:palanateui/screen/loginPage4.dart';
import 'loginpage.dart';

class Login3 extends StatelessWidget {
  const Login3({Key? key}) : super(key: key);

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
                  "Get Notified when\n you get a new assignment",
                  style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white38,
                      ),
                      height: 7,
                      width: 25,
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white38,
                      ),
                      height: 7,
                      width: 25,
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.lightBlue,
                      ),
                      height: 7,
                      width: 40,
                    ),
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                CustomeButton(
                  title: "Sign Up",
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => One()));
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                CustomeButton(
                  isBlue: true,
                  title: "Login",
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => One()));
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
