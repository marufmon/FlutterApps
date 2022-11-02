// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:foodapp/model/allinformationfoodapp.dart';
import 'package:foodapp/weiget/bottomitembar.dart';
import 'package:foodapp/weiget/itmbar.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailFoodList extends StatefulWidget {
  const DetailFoodList({super.key});

  @override
  State<DetailFoodList> createState() => _DetailFoodListState();
}

class _DetailFoodListState extends State<DetailFoodList> {
  final maruf = ProductList.generatedProductList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Your location",
                    style:
                        GoogleFonts.roboto(fontSize: 16, color: Colors.black),
                  ),
                  IconButton(
                      onPressed: (() {}),
                      icon: Icon(
                        Icons.arrow_drop_down,
                        size: 25,
                        color: Colors.black,
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: (() {}),
                          icon: Icon(
                            Icons.location_on,
                            size: 20,
                            color: Colors.orangeAccent,
                          )),
                      Text(
                        "Dhaka Bangladesh",
                        style: GoogleFonts.roboto(
                            fontSize: 18, color: Colors.black),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: (() {}),
                          icon: Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.black,
                          )),
                      IconButton(
                          onPressed: (() {}),
                          icon: Icon(
                            Icons.shopping_cart_checkout,
                            size: 30,
                            color: Colors.black,
                          )),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Let's Find the best",
                    style:
                        GoogleFonts.roboto(fontSize: 30, color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "food arround you",
                    style:
                        GoogleFonts.roboto(fontSize: 30, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    " Find by Category",
                    style:
                        GoogleFonts.roboto(fontSize: 20, color: Colors.black),
                  ),
                  TextButton(
                      onPressed: (() {}),
                      child: Text(
                        "see all",
                        style: GoogleFonts.roboto(
                            fontSize: 18, color: Colors.orange),
                      ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ItmemBar(),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    " Result",
                    style:
                        GoogleFonts.roboto(fontSize: 20, color: Colors.black),
                  ),
                  TextButton(
                      onPressed: (() {}),
                      child: Text(
                        "see all",
                        style: GoogleFonts.roboto(
                            fontSize: 18, color: Colors.orange),
                      ))
                ],
              ),
              SizedBox(
                height: 15,
              ),
              BottomItemBar()
            ],
          ),
        ),
      ),
    );
  }
}
