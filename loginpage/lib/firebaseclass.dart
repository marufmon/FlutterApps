import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:loginpage/Loginpage.dart';
import 'package:loginpage/confirmpasspass.dart';
import 'package:loginpage/hompage.dart';
import 'package:loginpage/otp.dart';

class FirebaseAuthin {
  resetPass(emailAddress, context) async {
    try {
      final credential = await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailAddress)
          .then((value) => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OTP(),
              )));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  createAccount(emailAddress, password) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  oTP(code, context) async {
    try {
      final credential = await FirebaseAuth.instance
          .verifyPasswordResetCode(code)
          .then((value) => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => ConfirmPassword(),
              )));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  signIn(emailAddress, password, context) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password)
          .then((value) {
        print(value.user);
        return Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
            (route) => false);
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  confirmPass(newcode, confirmcode, context) async {
    try {
      final credential = await FirebaseAuth.instance
          .confirmPasswordReset(code: '$newcode}', newPassword: '$confirmcode')
          .then((value) => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SigninPage(),
              )));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
  // register()async{
  //   final storage = FirebaseStorage.instance.;
  // }
}
