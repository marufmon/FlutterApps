import 'package:flutter/material.dart';
import 'package:loginpage/resetpass.dart';

import 'firebaseclass.dart';

class ConfirmPassword extends StatefulWidget {
  const ConfirmPassword({super.key});

  @override
  State<ConfirmPassword> createState() => _ConfirmPasswordState();
}

class _ConfirmPasswordState extends State<ConfirmPassword> {
  final auth = FirebaseAuthin();
  final confirmController = TextEditingController();
  final confirm2Controller = TextEditingController();
  // final passController = TextEditingController();
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
                controller: confirmController,
                decoration: InputDecoration(
                    hintText: 'New Pass',
                    prefixIcon: Icon(Icons.alternate_email))),
            TextFormField(
                controller: confirm2Controller,
                decoration: InputDecoration(
                    hintText: 'New Pass',
                    prefixIcon: Icon(Icons.alternate_email))),
            Container(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      FirebaseAuthin().confirmPass(confirmController.text,
                          confirm2Controller.text, context);
                    },
                    child: Text(
                      'Save',
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
