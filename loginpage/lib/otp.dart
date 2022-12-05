// import 'package:firebase_class/class/firebase_services.dart';
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'firebaseclass.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  final auth = FirebaseAuthin();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text('OTP'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                    hintText: 'OTP CODE', prefixIcon: Icon(Icons.code))),
            SizedBox(height: 50),
            Container(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      FirebaseAuthin().oTP(emailController.text, context);
                    },
                    child: Text(
                      'Confirm',
                      style: TextStyle(letterSpacing: 1.5),
                    )))
          ],
        ),
      ),
    );
  }
}
