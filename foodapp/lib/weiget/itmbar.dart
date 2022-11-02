import 'package:flutter/material.dart';
import 'package:foodapp/model/allinformationfoodapp.dart';
import 'package:google_fonts/google_fonts.dart';

class ItmemBar extends StatefulWidget {
  const ItmemBar({super.key});

  @override
  State<ItmemBar> createState() => _ItmemBarState();
}

class _ItmemBarState extends State<ItmemBar> {
  final maruf = ProductList.generatedProductList();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      height: 180,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (index, context) => Container(
                width: 250,
                child: Stack(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(maruf[context].img)),
                    Positioned(
                        bottom: 25,
                        left: 10,
                        child: Text(
                          maruf[context].title,
                          style: GoogleFonts.roboto(
                              color: Colors.white, fontSize: 18),
                        ))
                  ],
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 10,
              ),
          itemCount: maruf.length),
    );
  }
}
