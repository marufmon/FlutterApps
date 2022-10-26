import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      color: Colors.amber,
                    )),
                    Expanded(
                        child: Container(
                      color: Colors.black,
                    )),
                  ],
                )),
            Expanded(
                flex: 3,
                child: Container(
                  color: Colors.red,
                )),
            Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      color: Colors.blueGrey,
                    )),
                    Expanded(
                        child: Container(
                      color: Colors.blue,
                    )),
                  ],
                )),
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.tealAccent,
                )),
          ],
        ),
      ),
    );
  }
}
