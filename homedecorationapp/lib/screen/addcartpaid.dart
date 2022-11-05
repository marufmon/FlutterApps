// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homedecorationapp/model/datalist.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  ListTile(
                      leading: IconButton(
                          onPressed: (() {
                            Navigator.of(context).pop();
                          }),
                          icon: Icon(
                            Icons.arrow_back_ios,
                            size: 20,
                            color: Colors.black38,
                          )),
                      title: Text(
                        "My card",
                        style: GoogleFonts.roboto(
                            fontSize: 20, color: Colors.black),
                      ),
                      trailing: IconButton(
                        onPressed: (() {}),
                        icon: Icon(
                          Icons.paid,
                          size: 20,
                          color: Colors.black38,
                        ),
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 15, left: 25, right: 25),
                    height: 650,
                    child: ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemBuilder: (contex, index) => Container(
                              height: 150,
                              color: Colors.white,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      height: 150,
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
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "size: M",
                                            style: GoogleFonts.roboto(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "\$ ",
                                                style: GoogleFonts.roboto(
                                                    fontSize: 18,
                                                    color: Colors.green),
                                              ),
                                              Text(
                                                "${decoration[index].totalPrice} ",
                                                style: GoogleFonts.roboto(
                                                    fontSize: 18,
                                                    color: Colors.green),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              MaterialButton(
                                                color: Colors.grey,
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
                                                width: 15,
                                              ),
                                              Text(
                                                "${decoration[index].quantity}",
                                                style: GoogleFonts.roboto(
                                                    fontSize: 16,
                                                    color: Colors.black),
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              MaterialButton(
                                                color: Colors.grey,
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
                        color: Colors.grey),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Text(
                            "Delivery prices.........\$ 5",
                            style: GoogleFonts.lobster(
                                fontSize: 20, color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Text(
                            "Total price.........\$ $totalCost",
                            style: GoogleFonts.lobster(
                                fontSize: 20, color: Colors.white),
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
                                        'Thank you buying\n my online home \n Decoraton items',
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
