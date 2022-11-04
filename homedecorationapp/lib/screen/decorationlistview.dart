// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:homedecorationapp/model/datalist.dart';

class DEcorationView extends StatefulWidget {
  const DEcorationView({super.key});

  @override
  State<DEcorationView> createState() => _DEcorationViewState();
}

class _DEcorationViewState extends State<DEcorationView> {
  final decoration = DecorationList.generetedDecorationList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  margin:
                      EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 10),
                  height: 350,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "images/de11.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    top: 30,
                    left: 15,
                    child: IconButton(
                        onPressed: (() {
                          Navigator.of(context).pop();
                        }),
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 25,
                          color: Colors.white,
                        )))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
