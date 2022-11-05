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
  int prices = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                  style: GoogleFonts.roboto(fontSize: 20, color: Colors.black),
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
                  scrollDirection: Axis.vertical,
                  itemBuilder: (contex, index) => Container(
                        height: 160,
                        width: 150,
                        color: Colors.white,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                height: 170,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                    Text(
                                      decoration[index].price,
                                      style: GoogleFonts.roboto(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.green),
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
                                                  BorderRadius.circular(10)),
                                          height: 25,
                                          minWidth: 10,
                                          onPressed: (() {
                                            decoration[index].quantity++;
                                            decoration[index].totalPrice =
                                                prices *
                                                    decoration[index].quantity;
                                          }),
                                          child: Icon(
                                            Icons.remove,
                                            size: 15,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        MaterialButton(
                                          color: Colors.grey,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          height: 25,
                                          minWidth: 10,
                                          onPressed: (() {}),
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
          ],
        ),
      ),
    );
  }
}
