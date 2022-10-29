// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:palanateui/nav_bar_demo/calender.dart';
import 'package:palanateui/nav_bar_demo/mytast.dart';
import 'package:palanateui/nav_bar_demo/profile.dart';
import 'package:palanateui/nav_bar_demo/project.dart';
import 'package:palanateui/screen/bottomsheeetdemo.dart';
import 'package:palanateui/screen/loginpage.dart';
import 'package:palanateui/screen/teamsinfo.dart';
import 'package:palanateui/weiged/const.dart';

class BottomBarDEmo extends StatefulWidget {
  const BottomBarDEmo({super.key});

  @override
  State<BottomBarDEmo> createState() => _BottomBarDEmoState();
}

class _BottomBarDEmoState extends State<BottomBarDEmo> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  login() {
    return showModalBottomSheet(
        context: context, builder: (context) => BottomSheetDemo());
  }

  login1() {
    return showModalBottomSheet(
        isDismissible: true,
        context: context,
        builder: (context) => TeamInfoDemo());
  }

  var _currentIndex = 0;
  final pages = [
    MyTask(),
    Clender(),
    Project(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        floatingActionButton: FloatingActionButton(
          isExtended: true,
          backgroundColor: Colors.blue,
          child: Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          ),
          onPressed: () {
            login();
            login1();
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        backgroundColor: Colors.black,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          selectedFontSize: 20,
          items: [
            BottomNavigationBarItem(
                backgroundColor: cardColor,
                icon: Icon(
                  (Icons.qr_code),
                  color: Colors.white,
                ),
                label: "My_task"),
            BottomNavigationBarItem(
                backgroundColor: cardColor,
                icon: Icon(
                  (Icons.calendar_month),
                  color: Colors.white,
                ),
                label: "Calender"),
            BottomNavigationBarItem(
              backgroundColor: cardColor,
              icon: Icon(
                (Icons.wrap_text),
                color: Colors.white,
              ),
              label: "Project",
            ),
            BottomNavigationBarItem(
                backgroundColor: cardColor,
                icon: Icon(
                  (Icons.person),
                  color: Colors.white,
                ),
                label: "Profile"),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        body: pages[_currentIndex],
      ),
    );
  }
}
