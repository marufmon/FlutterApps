// import 'package:firebase_class/class/firebase_services.dart';
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:loginpage/resetpass.dart';

import 'firebaseclass.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final auth = FirebaseAuthin();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text('Signup'),
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
            TextFormField(
                controller: passController,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.alternate_email))),
            SizedBox(height: 50),
            Container(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      FirebaseAuthin().signIn(
                          emailController.text, passController.text, context);
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(letterSpacing: 1.5),
                    ))),
            TextButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetPage(),
                    )),
                child: Text('Reset')),
          ],
        ),
      ),
    );
  }
}
