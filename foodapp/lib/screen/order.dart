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
  double totalCost = 0;
  getToatalCost() {
    double total = 0;
    maruf.forEach((element) {
      total += element.totalPrice;
      totalCost = total;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    getToatalCost();
    super.initState();
  }

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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          maruf[contex].title,
                                          style: GoogleFonts.roboto(
                                              fontSize: 22,
                                              color: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "\$",
                                              style: GoogleFonts.roboto(
                                                  fontSize: 22,
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              "${maruf[contex].totalPrice} ",
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
                                                                        10),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        10))),
                                                        height: 40,
                                                        minWidth: 35,
                                                        color: Colors.orange,
                                                        onPressed: (() {
                                                          setState(() {
                                                            maruf[contex]
                                                                .quantity++;

                                                            maruf[contex]
                                                                .totalPrice = maruf[
                                                                        contex]
                                                                    .prices *
                                                                maruf[contex]
                                                                    .quantity;
                                                            print(maruf[contex]
                                                                .totalPrice);
                                                          });
                                                          setState(() {
                                                            getToatalCost();
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
                                                                        10),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        10))),
                                                        height: 40,
                                                        minWidth: 35,
                                                        color: Colors.orange,
                                                        onPressed: (() {
                                                          setState(() {
                                                            maruf[contex]
                                                                .quantity--;

                                                            maruf[contex]
                                                                .totalPrice = maruf[
                                                                        contex]
                                                                    .prices *
                                                                maruf[contex]
                                                                    .quantity;
                                                          });
                                                          setState(() {
                                                            getToatalCost();
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
                      "Delivery prices............60",
                      style:
                          GoogleFonts.roboto(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      "Total prices......... $totalCost",
                      style:
                          GoogleFonts.roboto(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  Center(
                    child: MaterialButton(
                      height: 55,
                      minWidth: 130,
                      color: Colors.teal,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: (() {
                        showDialog(
                          context: context,
                          builder: (context) =>
                              AlertDialog(content: Text('${totalCost + 60}')),
                        );
                      }),
                      child: Text(
                        "check",
                        style: GoogleFonts.roboto(
                            fontSize: 20, color: Colors.white),
                      ),
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
