// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:resisterfirebase/resister.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ResistePage())));

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
                    "https://www.foodandwine.com/thmb/UtR_MAbF9HKvvu5cNJEJ_j89hWA=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/The-Perfect-Pizza-Pairings-VT-2-MAG1021-4000e3499dfb4c08af0c32f427a77c94.jpg"),
                fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
