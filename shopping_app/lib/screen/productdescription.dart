// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/model/datalist.dart';

class ProductDescription extends StatefulWidget {
  const ProductDescription({super.key});

  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  final shopping = ShoppingList.generatedShoppingList();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 700,
              width: double.infinity,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (contex, index) => Container(
                        padding: EdgeInsets.only(left: 10, right: 5),
                        height: 300,
                        width: 350,
                        child: Column(
                          children: [
                            Container(
                              height: 350,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  shopping[index].image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      IconButton(
                                          onPressed: (() {}),
                                          icon: Icon(
                                            Icons.shopping_cart_checkout,
                                            size: 25,
                                            color: Colors.blue,
                                          )),
                                      Text(
                                        "Shopping",
                                        style: GoogleFonts.roboto(
                                            fontSize: 18, color: Colors.blue),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        shopping[index].title,
                                        style: GoogleFonts.roboto(fontSize: 25),
                                      ),
                                      IconButton(
                                          onPressed: (() {}),
                                          icon: Icon(
                                            Icons.link,
                                            size: 25,
                                            color: Colors.blue,
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                  separatorBuilder: (_, index) => SizedBox(width: 5),
                  itemCount: shopping.length),
            )
          ],
        ),
      ),
    );
  }
}
