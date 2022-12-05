// import 'package:firebase_class/class/firebase_services.dart';
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'firebaseclass.dart';

class ResetPage extends StatefulWidget {
  const ResetPage({super.key});

  @override
  State<ResetPage> createState() => _ResetPageState();
}

class _ResetPageState extends State<ResetPage> {
  final auth = FirebaseAuthin();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text('RESET pass'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.alternate_email))),
            SizedBox(height: 50),
            Container(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      FirebaseAuthin().resetPass(emailController.text, context);
                    },
                    child: Text(
                      'Rest Pass',
                      style: TextStyle(letterSpacing: 1.5),
                    )))
          ],
        ),
      ),
    );
  }
}
