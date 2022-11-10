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
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Student Info",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w800, fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
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
