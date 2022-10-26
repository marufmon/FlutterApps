// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, implementation_imports, unnecessary_import
import 'package:day18/weidget/page2.dart';
import 'package:day18/weidget/page3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TravelBlogDemo extends StatefulWidget {
  const TravelBlogDemo({super.key});

  @override
  State<TravelBlogDemo> createState() => _TravelBlogDemoState();
}

class _TravelBlogDemoState extends State<TravelBlogDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: (() {}),
              icon: Icon(
                Icons.menu,
                size: 30,
                color: Colors.black,
              ))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              "Travel Blog",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Expanded(flex: 2, child: Page2()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Place",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text(
                  "veiw all",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(flex: 1, child: Page3()),
        ],
      ),
    );
  }
}
