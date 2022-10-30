// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BootonStylePart extends StatefulWidget {
  const BootonStylePart({super.key});

  @override
  State<BootonStylePart> createState() => _BootonStylePartState();
}

class _BootonStylePartState extends State<BootonStylePart> {
  final bottonList = <String>["all", "⚡populer", "🌟feature", "❤️ catagories"];
  var seleceted = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 15,
        right: 15,
      ),
      width: double.infinity,
      height: 40,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            return InkWell(
              onTap: (() {
                setState(() {
                  seleceted = index;
                });
              }),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: seleceted == index ? Colors.white : Colors.teal),
                    borderRadius: BorderRadius.circular(20),
                    color: seleceted == index
                        ? Colors.tealAccent
                        : Colors.white38),
                child: Text(
                  bottonList[index],
                  style: GoogleFonts.roboto(fontSize: 14),
                ),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              ),
            );
          }),
          separatorBuilder: (_, index) => SizedBox(
                width: 10,
              ),
          itemCount: bottonList.length),
    );
  }
}
