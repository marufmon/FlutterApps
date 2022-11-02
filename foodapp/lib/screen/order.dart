// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodapp/model/allinformationfoodapp.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final maruf = ProductList.generatedProductList();
  int prices = 10;
  int quantity = 10;
  int totalPrice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(30),
              height: 950,
              child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (index, contex) => Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(maruf[contex].img)),
                                Positioned(
                                    bottom: 15,
                                    left: 20,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "\$",
                                              style: GoogleFonts.roboto(
                                                  fontSize: 22,
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              "${maruf[contex].prices}",
                                              style: GoogleFonts.roboto(
                                                  fontSize: 20,
                                                  color: Colors.white),
                                            ),
                                            Row(
                                              children: [
                                                Row(
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 45),
                                                      child: MaterialButton(
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        15),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        15))),
                                                        height: 50,
                                                        minWidth: 50,
                                                        color: Colors.orange,
                                                        onPressed: (() {
                                                          setState(() {
                                                            if (prices > 0) {
                                                              quantity--;
                                                            }
                                                          });
                                                        }),
                                                        child: Icon(
                                                          Icons.add,
                                                          color: Colors.white,
                                                          size: 25,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 30,
                                                    ),
                                                    Text(
                                                      "${maruf[contex].quantity}",
                                                      style: GoogleFonts.roboto(
                                                          fontSize: 20,
                                                          color: Colors.white),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 35),
                                                      child: MaterialButton(
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        15),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        15))),
                                                        height: 50,
                                                        minWidth: 50,
                                                        color: Colors.orange,
                                                        onPressed: (() {
                                                          setState(() {
                                                            if (prices > 0) {
                                                              quantity++;
                                                            }
                                                          });
                                                        }),
                                                        child: Icon(
                                                          Icons.remove,
                                                          color: Colors.white,
                                                          size: 25,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            )
                                          ],
                                        )
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
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: Colors.grey),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      "Delivery prices............20",
                      style:
                          GoogleFonts.roboto(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      "Total prices.................30",
                      style:
                          GoogleFonts.roboto(fontSize: 20, color: Colors.white),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
