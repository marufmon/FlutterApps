// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:foodapp/model/allinformationfoodapp.dart';
import 'package:foodapp/screen/order.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomItemBar extends StatefulWidget {
  const BottomItemBar({super.key});

  @override
  State<BottomItemBar> createState() => _BottomItemBarState();
}

class _BottomItemBarState extends State<BottomItemBar> {
  final maruf = ProductList.generatedProductList();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      height: 850,
      child: ListView.separated(
          scrollDirection: Axis.vertical,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (index, contex) => Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(maruf[contex].img)),
                        Positioned(
                            bottom: 1,
                            left: 20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  maruf[contex].name,
                                  style: GoogleFonts.roboto(
                                      fontSize: 16, color: Colors.white),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          IconButton(
                                              onPressed: (() {}),
                                              icon: Icon(
                                                Icons.star,
                                                size: 20,
                                                color: Colors.yellow,
                                              )),
                                          Text(
                                            maruf[contex].rating,
                                            style: GoogleFonts.roboto(
                                                fontSize: 16,
                                                color: Colors.green),
                                          ),
                                        ],
                                      ),
                                    ),
                                    IconButton(
                                        onPressed: (() {}),
                                        icon: Icon(
                                          Icons.location_on,
                                          size: 20,
                                          color: Colors.blue,
                                        )),
                                    Text(
                                      maruf[contex].location,
                                      style: GoogleFonts.roboto(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 40),
                                      child: MaterialButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(15),
                                                bottomRight:
                                                    Radius.circular(15))),
                                        height: 60,
                                        minWidth: 60,
                                        color: Colors.orange,
                                        onPressed: (() {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (contex) =>
                                                      OrderPage()));
                                        }),
                                        child: Icon(
                                          Icons.shopping_cart_checkout,
                                          color: Colors.white,
                                          size: 35,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ))
                      ],
                    ),
                  ],
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(
                height: 10,
              ),
          itemCount: maruf.length),
    );
  }
}
