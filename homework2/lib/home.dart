// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:homework2/five.dart';
import 'package:homework2/four.dart';
import 'package:homework2/one.dart';
import 'package:homework2/three.dart';
import 'package:homework2/two.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentIndex = 0;
  final pages = [One(), Two(), Three(), Four(), Five()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedFontSize: 20,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.grey,
              icon: Icon(
                (Icons.facebook),
                color: Colors.blue,
              ),
              label: "facebook"),
          BottomNavigationBarItem(
              backgroundColor: Colors.grey,
              icon: Icon(
                (Icons.whatsapp),
                color: Colors.lightGreen,
              ),
              label: "whatsApp"),
          BottomNavigationBarItem(
              backgroundColor: Colors.grey,
              icon: Icon(
                (Icons.login),
                color: Colors.red,
              ),
              label: "Login"),
          BottomNavigationBarItem(
              backgroundColor: Colors.grey,
              icon: Icon(
                (Icons.person),
                color: Colors.teal,
              ),
              label: "Profile"),
          BottomNavigationBarItem(
              backgroundColor: Colors.grey,
              icon: Icon(
                (Icons.people),
                color: Colors.cyan,
              ),
              label: "Friends")
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: pages[_currentIndex],
    );
  }
}
