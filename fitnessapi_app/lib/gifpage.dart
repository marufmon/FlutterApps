// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fitnessapi_app/model/datalist.dart';
import 'package:flutter/material.dart';

class GifPage extends StatefulWidget {
  const GifPage({super.key, required this.exerciseModel, this.seconds});

  final ExerciseModel exerciseModel;
  final int? seconds;

  @override
  State<GifPage> createState() => _GifPageState();
}

class _GifPageState extends State<GifPage> {
  late Timer timer;
  int startCount = 0;

  @override
  void initState() {
    timer = Timer.periodic(Duration(seconds: 2), (timer) {
      if (timer.tick == widget.seconds) {
        timer.cancel();
        Future.delayed(Duration(seconds: 1), () {
          Navigator.of(context).pop();
        });
      }
      setState(() {
        startCount = timer.tick;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          CachedNetworkImage(
            width: double.infinity,
            height: double.infinity,
            imageUrl: "${widget.exerciseModel.gif}",
          ),
          Positioned(
              top: 50,
              right: 20,
              left: 20,
              child: Center(
                  child: Text(
                '${startCount}',
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold),
              )))
        ]),
      ),
    );
  }
}
