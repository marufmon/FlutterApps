// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:productlistapp/model/productlistdemo.dart';
import 'package:productlistapp/weiged/griveviewdemo.dart';
import 'package:productlistapp/weiged/name.dart';
import 'package:productlistapp/weiged/productcatagories.dart';
import 'package:productlistapp/weiged/separatedproductlist.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromARGB(255, 235, 230, 230),
        body: Container(
          child: Column(
            children: [
              NamePAge(),
              Page5(),
              ProductCatagories(),
              GriveViewDemo(),
            ],
          ),
        ),
      ),
    );
  }
}
