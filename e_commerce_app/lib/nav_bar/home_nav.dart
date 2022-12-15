import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:e_commerce_app/nav_bar/catagory_page.dart';
import 'package:e_commerce_app/nav_bar/order_page.dart';
import 'package:e_commerce_app/nav_bar/product_page.dart';
import 'package:e_commerce_app/nav_bar/profile_page.dart';
import 'package:flutter/material.dart';

class HomeNav extends StatefulWidget {
  const HomeNav({super.key});

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  final myPages = [
    OrderPage(),
    Categories(),
    ProductPage(),
    ProfilePage(),
  ];
  int indexPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myPages[indexPage],
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        height: 50.0,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.category_sharp, size: 30),
          Icon(Icons.add, size: 30),
          Icon(Icons.person, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            indexPage = index;
          });
        },
      ),
    );
  }
}
