// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homedecorationapp/model/datalist.dart';
import 'package:homedecorationapp/screen/addcartpaid.dart';

class DEcorationView extends StatefulWidget {
  const DEcorationView({super.key});

  @override
  State<DEcorationView> createState() => _DEcorationViewState();
}

class _DEcorationViewState extends State<DEcorationView> {
  final decoration = DecorationList.generetedDecorationList();
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  margin:
                      EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 10),
                  height: 280,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "images/de11.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    top: 30,
                    left: 15,
                    child: IconButton(
                        onPressed: (() {
                          Navigator.of(context).pop();
                        }),
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 25,
                          color: Colors.white,
                        ))),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 15, left: 25),
              height: 80,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (contex, index) => Container(
                        width: 250,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              decoration[index].name,
                              style: GoogleFonts.roboto(
                                  fontSize: 20, color: Colors.black),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              decoration[index].price,
                              style: GoogleFonts.roboto(
                                  fontSize: 18, color: Colors.green),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                  separatorBuilder: (_, index) => SizedBox(width: 100),
                  itemCount: decoration.length),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 10),
              child: Text(
                "Usually on trails or footpaths in countriesides walking for pleasure developed in london during the orginal products quilities in the items.",
                style: GoogleFonts.roboto(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "More Info",
                  style: GoogleFonts.roboto(fontSize: 20, color: Colors.red),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 25),
              child: Text(
                "Facilities",
                style: GoogleFonts.roboto(fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, right: 20, top: 15),
              height: 45,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return InkWell(
                      onTap: (() {
                        setState(() {
                          selected = index;
                        });
                      }),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: selected == index
                                    ? Colors.tealAccent
                                    : Colors.white38),
                            child: Text(
                              decoration[index].subtitle,
                              style: GoogleFonts.roboto(fontSize: 14),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                          ),
                        ],
                      ),
                    );
                  }),
                  separatorBuilder: (_, index) => SizedBox(
                        width: 10,
                      ),
                  itemCount: decoration.length),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 30),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.grey,
                height: 50,
                minWidth: 300,
                onPressed: (() {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AddCARDPaid()));
                }),
                child: Text(
                  "Add to card",
                  style: GoogleFonts.roboto(fontSize: 16, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
