// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/model/datalist.dart';
import 'package:shopping_app/screen/productdescription.dart';
import 'package:shopping_app/screen/productdescription2.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  final shopping = ShoppingList.generatedShoppingList();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  height: 45,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black12),
                  child: IconButton(
                      onPressed: (() {}),
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                        color: Colors.black38,
                      )),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  height: 45,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(96, 226, 221, 221)),
                  child: IconButton(
                      onPressed: (() {}),
                      icon: Icon(
                        Icons.search,
                        size: 20,
                        color: Colors.black38,
                      )),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 25, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi-Fi Shop & Service",
                    style:
                        GoogleFonts.roboto(fontSize: 25, color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Audio shop on Rustavil Ave 57.\n This shop offers product & services",
                    style: GoogleFonts.roboto(
                        fontSize: 16,
                        color: Color.fromARGB(255, 117, 112, 112)),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Product ",
                      style: GoogleFonts.roboto(
                          fontSize: 22, color: Colors.black)),
                  TextButton(
                    onPressed: () {},
                    child: Text("See all",
                        style: GoogleFonts.roboto(
                            fontSize: 16, color: Colors.blue)),
                  )
                ],
              ),
            ),
            Container(
                height: 220,
                margin: EdgeInsets.only(left: 10, right: 10),
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (contex, index) => GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ProductDescription()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            height: 200,
                            width: 160,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 140,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      shopping[index].image,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Text(
                                  shopping[index].title,
                                  style: GoogleFonts.roboto(fontSize: 14),
                                ),
                                Text(shopping[index].name,
                                    style: GoogleFonts.roboto(fontSize: 14)),
                                Text(shopping[index].prices2,
                                    style: GoogleFonts.roboto(
                                        fontSize: 14, color: Colors.green)),
                              ],
                            ),
                          ),
                        ),
                    separatorBuilder: (_, index) => SizedBox(
                          width: 1,
                        ),
                    itemCount: shopping.length)),
            Container(
              margin: EdgeInsets.only(left: 25, bottom: 10, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Accessories ",
                      style: GoogleFonts.roboto(
                          fontSize: 22, color: Colors.black)),
                  TextButton(
                    onPressed: () {},
                    child: Text("Show all",
                        style: GoogleFonts.roboto(
                            fontSize: 16, color: Colors.blue)),
                  )
                ],
              ),
            ),
            Container(
              height: 205,
              margin: EdgeInsets.only(left: 10, right: 10),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: shopping.length,
                  itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => AddCardPage()));
                        },
                        child: Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 10),
                              height: 200,
                              width: 180,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  shopping[index].airphoneImg,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 12,
                              left: 20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    shopping[index].title,
                                    style: GoogleFonts.roboto(fontSize: 14),
                                  ),
                                  Text(
                                    shopping[index].name2,
                                    style: GoogleFonts.roboto(fontSize: 12),
                                  ),
                                  Text(
                                    shopping[index].price,
                                    style: GoogleFonts.roboto(
                                        fontSize: 14, color: Colors.green),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
