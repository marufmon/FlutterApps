// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:foodcourt/model/produt.dart';

import 'package:google_fonts/google_fonts.dart';

class AddCARDPaid extends StatefulWidget {
  const AddCARDPaid({super.key});

  @override
  State<AddCARDPaid> createState() => _AddCARDPaidState();
}

class _AddCARDPaidState extends State<AddCARDPaid> {
  final decoration = DecorationList.generetedDecorationList();
  int totalCost = 0;

  getToatalCost() {
    int totalAmount = 0;
    decoration.forEach((element) {
      totalAmount += element.totalPrice;
      totalCost = totalAmount;
    });
  }

  @override
  void initState() {
    getToatalCost();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15, left: 25, right: 25),
                    height: 800,
                    child: ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemBuilder: (contex, index) => Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 24, 23, 23),
                                  borderRadius: BorderRadius.circular(15)),
                              height: 120,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      height: 115,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          decoration[index].image,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 5,
                                    child: Container(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            decoration[index].name,
                                            style: GoogleFonts.roboto(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "size:M",
                                            style: GoogleFonts.roboto(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "\$ ",
                                                style: GoogleFonts.roboto(
                                                    fontSize: 16,
                                                    color: Colors.green),
                                              ),
                                              Text(
                                                "${decoration[index].totalPrice} ",
                                                style: GoogleFonts.roboto(
                                                    fontSize: 16,
                                                    color: Colors.green),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              MaterialButton(
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                height: 25,
                                                minWidth: 10,
                                                onPressed: (() {
                                                  setState(() {
                                                    if (decoration[index]
                                                            .quantity >
                                                        0) {
                                                      decoration[index]
                                                          .quantity--;
                                                    }

                                                    decoration[index]
                                                            .totalPrice =
                                                        decoration[index]
                                                                .prices *
                                                            decoration[index]
                                                                .quantity;
                                                    print(decoration[index]
                                                        .totalPrice);
                                                  });
                                                  setState(() {
                                                    getToatalCost();
                                                  });
                                                }),
                                                child: Icon(
                                                  Icons.remove,
                                                  size: 15,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                "${decoration[index].quantity}",
                                                style: GoogleFonts.roboto(
                                                    fontSize: 16,
                                                    color: Colors.white),
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              MaterialButton(
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                height: 25,
                                                minWidth: 10,
                                                onPressed: (() {
                                                  setState(() {
                                                    decoration[index]
                                                        .quantity++;

                                                    decoration[index]
                                                            .totalPrice =
                                                        decoration[index]
                                                                .prices *
                                                            decoration[index]
                                                                .quantity;
                                                    print(decoration[index]
                                                        .totalPrice);
                                                  });
                                                  setState(() {
                                                    getToatalCost();
                                                  });
                                                }),
                                                child: Icon(
                                                  Icons.add,
                                                  size: 15,
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        separatorBuilder: (_, index) => SizedBox(height: 10),
                        itemCount: decoration.length),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color.fromARGB(255, 15, 15, 15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Delivery prices",
                                style: GoogleFonts.lobster(
                                    fontSize: 20, color: Colors.white),
                              ),
                              Text(
                                "\$ 5",
                                style: GoogleFonts.lobster(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total price",
                                style: GoogleFonts.lobster(
                                    fontSize: 20, color: Colors.white),
                              ),
                              Text(
                                "\$ $totalCost",
                                style: GoogleFonts.lobster(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ],
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
                                builder: (context) => AlertDialog(
                                    content: Container(
                                  height: 150,
                                  width: 150,
                                  child: Column(
                                    children: [
                                      Text(
                                        "The total price \$ ${totalCost + 5}",
                                        style:
                                            GoogleFonts.lobster(fontSize: 20),
                                      ),
                                      Text(
                                        'Thank you buying\nmy online\n product',
                                        style:
                                            GoogleFonts.lobster(fontSize: 16),
                                      ),
                                      Icon(
                                        Icons.favorite,
                                        size: 55,
                                        color: Colors.red,
                                      )
                                    ],
                                  ),
                                )),
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
          ],
        ),
      ),
    );
  }
}
