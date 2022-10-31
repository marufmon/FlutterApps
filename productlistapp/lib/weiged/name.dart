// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NamePAge extends StatefulWidget {
  const NamePAge({super.key});

  @override
  State<NamePAge> createState() => _NamePAgeState();
}

class _NamePAgeState extends State<NamePAge> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Onling Shopping",
                style: GoogleFonts.lobster(fontSize: 25, color: Colors.black),
              ),
              Icon(
                Icons.shopping_bag,
                size: 25,
                color: Colors.black,
              )
            ],
          ),
          SizedBox(
            height: 7,
          ),
          Text("flutter developer",
              style: GoogleFonts.roboto(fontSize: 18, color: Colors.black38)),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                  child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.grey,
                    focusColor: Colors.black,
                    hoverColor: Colors.black,
                    labelText: "search items",
                    hintText: "Enter your Items",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder()),
              )),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 55,
                width: 50,
                color: Colors.black26,
                child: Icon(Icons.settings_accessibility_sharp),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Text(
                "See all",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
