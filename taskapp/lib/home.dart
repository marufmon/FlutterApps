// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:taskapp/mydrawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF10AB83),
        toolbarHeight: 80,
        leading: IconButton(
            onPressed: (() {
              _scaffoldKey.currentState!.openDrawer();
            }),
            icon: Icon(Icons.menu_rounded)),
        title: Text(
          "Table Data",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
