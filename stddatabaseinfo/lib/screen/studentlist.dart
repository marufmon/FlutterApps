// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:stddatabaseinfo/screen/newstudent.dart';

class StudentList extends StatefulWidget {
  const StudentList({super.key});

  @override
  State<StudentList> createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 241, 247, 170),
        centerTitle: true,
        title: Text(
          "Student List",
          style: TextStyle(
              letterSpacing: 5.0,
              color: Color.fromARGB(255, 15, 1, 27),
              fontWeight: FontWeight.w800,
              fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 241, 247, 170),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => NewStudent()));
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
