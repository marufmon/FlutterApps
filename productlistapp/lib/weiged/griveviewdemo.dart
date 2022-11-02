// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:productlistapp/model/productlistdemo.dart';

class GriveViewDemo extends StatefulWidget {
  @override
  State<GriveViewDemo> createState() => _GriveViewDemoState();
}

class _GriveViewDemoState extends State<GriveViewDemo> {
  final maruf = ProductList.generatedProductList();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 10),
      height: 315,
      child: ListView.separated(
          scrollDirection: Axis.vertical,
          itemBuilder: (index, context) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 160,
                            height: 170,
                            child: Stack(
                              children: [
                                Image.asset(maruf[context].img),
                                Positioned(
                                  top: 10,
                                  right: 10,
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Text(
                            maruf[context].name,
                            style: GoogleFonts.roboto(),
                          ),
                          Text(
                            maruf[context].title,
                            style: GoogleFonts.roboto(),
                          ),
                          Row(
                            children: [
                              Text(
                                maruf[context].price,
                                style: GoogleFonts.roboto(),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              ElevatedButton(
                                  onPressed: (() {}), child: Text("order"))
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 160,
                            height: 170,
                            child: Stack(
                              children: [
                                Image.asset(maruf[context].img),
                                Positioned(
                                    top: 10,
                                    right: 10,
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.black38,
                                    ))
                              ],
                            ),
                          ),
                          Text(
                            maruf[context].name,
                            style: GoogleFonts.roboto(),
                          ),
                          Text(
                            maruf[context].title,
                            style: GoogleFonts.roboto(),
                          ),
                          Row(
                            children: [
                              Text(
                                maruf[context].price,
                                style: GoogleFonts.roboto(),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              ElevatedButton(
                                  onPressed: (() {}), child: Text("order"))
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
          separatorBuilder: (_, index) => SizedBox(
                height: 1,
              ),
          itemCount: maruf.length),
    );
  }
}
