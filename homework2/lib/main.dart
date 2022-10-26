// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:homework2/home.dart';
import 'one.dart';
import 'two.dart';
import 'three.dart';
import 'four.dart ';
import 'five.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
