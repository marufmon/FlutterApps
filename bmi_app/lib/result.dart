// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'formula.dart';

class Result extends StatefulWidget {
  int weight;
  int height;
  int age;

  Result(@required this.weight, @required this.height, @required this.age,
      {super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  Logic logic = Logic();
  double BMI = 0;
  @override
  void initState() {
    BMI = logic.calculateBMI(widget.height, widget.weight);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://t3.ftcdn.net/jpg/01/09/78/28/360_F_109782881_9b0klKpkP8xuVMOCZTnYKQMbTTXziJlh.jpg"),
                  fit: BoxFit.cover)),
          padding: EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'BMI Result is :',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange),
              ),
              Text('$BMI',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange))
            ],
          ),
        ),
      ),
    );
  }
}
