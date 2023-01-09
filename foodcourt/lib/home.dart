// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:foodcourt/screen/categorieslist.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:foodcourt/model/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController searchController = TextEditingController();
  static List<productList> generateProductlist = [
    productList(
      "Storoberry",
      "TastyHurt",
      "images/m1.jpg",
      1,
      100,
      0,
    ),
    productList(
      "SlideCake",
      "TastyHurt",
      "images/m4.jpg",
      1,
      200,
      0,
    ),
    productList(
      "Chocolate",
      "TastyHurt",
      "images/m15.jpg",
      1,
      300,
      0,
    ),
    productList(
      "Slide-Storoberry",
      "TastyHurt",
      "images/m6.jpg",
      1,
      100,
      0,
    ),
    productList(
      "Chocolate-Bar",
      "TastyHurt",
      "images/m7.jpg",
      1,
      150,
      0,
    ),
    productList(
      "Chocolate-Gravy",
      "TastyHurt",
      "images/m8.jpg",
      1,
      300,
      0,
    ),
    productList(
      "Chocolate-swip",
      "TastyHurt",
      "images/m9.jpg",
      1,
      500,
      0,
    ),
    productList(
      "Licci-Gravy",
      "TastyHurt",
      "images/m13.jpg",
      1,
      200,
      0,
    ),
    productList(
      "Chocolate-Choko",
      "TastyHurt",
      "images/m11.jpg",
      1,
      200,
      0,
    ),
    productList(
      "Choko-pappri",
      "TastyHurt",
      "images/m12.jpg",
      1,
      200,
      0,
    ),
  ];
  List<productList> product = List.from(generateProductlist);
  void updateList(String value) {
    setState(() {
      generateProductlist = product
          .where((element) =>
              element.title.toUpperCase().contains(value.toUpperCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: GNav(
        backgroundColor: Color.fromARGB(255, 31, 30, 30),
        gap: 8,
        color: Colors.grey,
        activeColor: Colors.white,
        iconSize: 24,
        tabBackgroundColor: Colors.grey.shade800,
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        tabs: [
          GButton(
            icon: Icons.category,
            text: 'Categories',
          ),
          GButton(
            icon: Icons.shopping_cart_checkout,
            text: 'Order',
          ),
        ],
        onTabChange: (index) {
          print(index);
        },
      ),
      body: Container(
        height: double.infinity,
        padding: EdgeInsets.only(top: 50, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Find Your",
              style: GoogleFonts.roboto(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Fovurite Foods",
              style: GoogleFonts.roboto(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: TextField(
                    onChanged: (value) => updateList(value),
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                    controller: searchController,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        hintText: 'What do you want to order?',
                        hintStyle: GoogleFonts.roboto(color: Colors.white),
                        filled: true,
                        fillColor: Color.fromARGB(255, 34, 33, 33)),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    flex: 1,
                    child: MaterialButton(
                      height: 50,
                      minWidth: 30,
                      color: Color.fromARGB(255, 37, 37, 37),
                      onPressed: (() {}),
                      child: Icon(
                        Icons.sell,
                        color: Colors.white,
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Popular Menu",
              style: GoogleFonts.roboto(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: product == 0
                  ? Center(
                      child: Text(
                        "Somethis error",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  : ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: generateProductlist.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  CategoriesList(product: product[index])));
                        },
                        child: Card(
                          color: Color.fromARGB(66, 104, 99, 99),
                          elevation: 5,
                          child: ListTile(
                            leading: Container(
                              height: 60,
                              width: 60,
                              child: Image.asset(
                                product[index].image,
                                fit: BoxFit.cover,
                              ),
                            ),
                            title: Text(
                              product[index].title,
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              product[index].subtitle,
                              style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            trailing: Text(
                              product[index].prices.toString(),
                              style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
