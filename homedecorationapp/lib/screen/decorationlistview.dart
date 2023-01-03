// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

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
        padding: EdgeInsets.only(left: 10, right: 10, top: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 20),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.grey,
                height: 50,
                minWidth: 360,
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
