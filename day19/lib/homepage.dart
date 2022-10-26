// ignore_for_file: prefer_const_constructors, unnecessary_string_escapes, prefer_const_literals_to_create_immutables

import 'package:day19/weiged/message.dart';
import 'package:day19/weiged/page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 45, left: 20),
              child: Text(
                "Chat with\nFlutter developer :)",
                style: GoogleFonts.lobster(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Message(),
            SizedBox(
              height: 25,
            ),
            Expanded(child: Page2())
          ],
        ),
      ),
    );
  }
}
