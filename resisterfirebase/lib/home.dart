// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:resisterfirebase/blog/details.dart';
import 'package:resisterfirebase/blog/gellay.dart';
import 'package:resisterfirebase/blog/popularity.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final myPages = [DetailsPage(), PopularityPage(), GalleryPage()];
  int indexPage = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.black,
            items: <Widget>[
              Icon(Icons.add, size: 30),
              Icon(Icons.list, size: 30),
              Icon(Icons.compare_arrows, size: 30),
            ],
            onTap: (index) {
              setState(() {
                indexPage = index;
              });
            },
          ),
          body: myPages[indexPage]),
    );
  }
}
