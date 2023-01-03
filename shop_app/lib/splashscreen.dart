// ignore_for_file: prefer_const_constructors, sort_child_properties_last
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shop_app/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => HomePage())));

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
                    "https://media.istockphoto.com/id/154972393/photo/vegetables-in-a-market.jpg?s=612x612&w=0&k=20&c=1xe3qc23gS1mLycDDyNA_nnqaw9A0x_6LqI_vCPmST0="),
                fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
