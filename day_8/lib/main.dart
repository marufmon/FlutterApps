//import 'package:day_8/home.dart';
import 'package:day_8/customDemo.dart';
import 'package:day_8/stackpositiondemo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      //home: CustomDemo(),
      home: StackDemo(),
    );
  }
}
