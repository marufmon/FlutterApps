import 'package:flutter/material.dart';

class StudentDetails extends StatefulWidget {
  static const String routeName = '/student_details';
  @override
  State<StudentDetails> createState() => _StudentDetailsState();
}

class _StudentDetailsState extends State<StudentDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Details'),
        centerTitle: true,
      ),
    );
  }
}
