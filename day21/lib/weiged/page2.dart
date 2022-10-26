// ignore_for_file: prefer_const_constructors, implementation_imports, prefer_const_literals_to_create_immutables

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BodyStylePart extends StatefulWidget {
  const BodyStylePart({super.key});

  @override
  State<BodyStylePart> createState() => _BodyStylePartState();
}

class _BodyStylePartState extends State<BodyStylePart> {
  final TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 45),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          image: DecorationImage(
              image: AssetImage("images/maruf1.png"), fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Fast Search Job",
            style: GoogleFonts.roboto(
                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          Text(
            "We can quickly in my offices\n for the job you want",
            style: GoogleFonts.roboto(
                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 55,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Name is emty";
                }

                if (value.length < 3) {
                  return "Name is too short";
                }
                if (value.length > 100) {
                  return "Name is too Long";
                }
              },
              controller: nameController,
              decoration: InputDecoration(
                  hintText: "Enter your name",
                  labelText: "Enter your name",
                  hintStyle: TextStyle(color: Colors.black38),
                  labelStyle: TextStyle(color: Colors.black38),
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.green,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
