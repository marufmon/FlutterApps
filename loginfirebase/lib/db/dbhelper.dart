// ignore_for_file: unused_local_variable, avoid_print

import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';

class FireBaseAuthiontacation {
  autont({emailAddress, password}) async {
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
}


