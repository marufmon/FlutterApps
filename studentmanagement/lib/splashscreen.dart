// ignore_for_file: prefer_const_constructors, sort_child_properties_last
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:studentmanagement/course/addcourse.dart';
import 'package:studentmanagement/course/veiwcourse.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 4),
        () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ViewCourseName())));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Center(
            child: CircularProgressIndicator(),
          ),
          height: MediaQuery.of(context).size.height * 1,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://gayetech.com/wp-content/uploads/2019/12/GayeTech-services-10.jpg"),
                fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
