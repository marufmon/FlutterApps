// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome my office",
                style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black26),
              ),
              Text(
                "M.H IT Company Ltd.",
                style: GoogleFonts.lobster(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )
            ],
          ),
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    transform: Matrix4.rotationZ(50),
                    child: IconButton(
                        onPressed: (() {}),
                        icon: Icon(
                          Icons.notifications_active_rounded,
                          size: 30,
                          color: Colors.redAccent,
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Positioned(
                      top: 0,
                      right: 20,
                      child: CircleAvatar(
                        radius: 3,
                        backgroundColor: Colors.amber,
                      )),
                ],
              ),
              CircleAvatar(
                  radius: 20, child: Image(image: AssetImage("images/m5.png")))
            ],
          ),
        ],
      ),
    );
  }
}
