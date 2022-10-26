// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:day_17/page1.dart';
import 'package:day_17/page2.dart';
import 'package:day_17/page3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TabBarDemo extends StatefulWidget {
  const TabBarDemo({super.key});

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: ListTile(
            leading: Text(
              "facebook",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            trailing: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: (() {}),
                    icon: Icon(
                      Icons.search,
                      size: 25,
                      color: Colors.grey,
                    )),
                IconButton(
                    onPressed: (() {}),
                    icon: Icon(
                      Icons.messenger,
                      size: 25,
                      color: Colors.grey,
                    )),
              ],
            ),
          ),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(
                Icons.home,
                size: 30,
                color: Colors.grey,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.people,
                size: 30,
                color: Colors.grey,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.menu,
                size: 30,
                color: Colors.grey,
              ),
            )
          ]),
        ),
        body: TabBarView(children: [Page1(), Page2(), Page3()]),
      ),
    );
  }
}
