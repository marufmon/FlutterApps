// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:day21/weiged/page1.dart';
import 'package:day21/weiged/page2.dart';
import 'package:day21/weiged/page3.dart';
import 'package:day21/weiged/page4.dart';
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
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.white,
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.grey.withOpacity(0.1),
                  )),
            ],
          ),
          Column(
            children: [
              HomeAppBar(),
              BodyStylePart(),
              BootonStylePart(),
              Page4()
            ],
          ),
        ],
      ),
    );
  }
}
