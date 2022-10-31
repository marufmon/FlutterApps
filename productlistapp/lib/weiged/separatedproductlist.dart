// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:productlistapp/model/productlistdemo.dart';

class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  final maruf = ProductList.generatedProductList();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      height: 180,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (index, context) => Container(
                width: 150,
                height: 200,
                child: Stack(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(maruf[context].img)),
                    Positioned(
                        bottom: 10,
                        left: 5,
                        child: Text(
                          maruf[context].title,
                          style: GoogleFonts.roboto(),
                        ))
                  ],
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 7,
              ),
          itemCount: maruf.length),
    );
  }
}
