// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homedecorationapp/model/datalist.dart';

import 'package:homedecorationapp/weidget/griveveiwitemdemo.dart';

class HomeDecontionList extends StatefulWidget {
  const HomeDecontionList({super.key});

  @override
  State<HomeDecontionList> createState() => _HomeDecontionListState();
}

class _HomeDecontionListState extends State<HomeDecontionList> {
  final decoration = DecorationList.generetedDecorationList();
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: IconButton(
                  onPressed: (() {}),
                  icon: Icon(
                    Icons.menu,
                    size: 25,
                    color: Colors.black38,
                  )),
              trailing: IconButton(
                  onPressed: (() {}),
                  icon: Icon(
                    Icons.shopping_cart_checkout,
                    size: 25,
                    color: Colors.black38,
                  )),
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 165,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage("images/welcome.jpg"),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Decore for\n your Home",
                      style:
                          GoogleFonts.roboto(fontSize: 22, color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Colors.grey,
                        onPressed: (() {}),
                        child: Text(
                          "view menu",
                          style: GoogleFonts.roboto(
                              fontSize: 16, color: Colors.black),
                        ))
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "Bedroom Collections",
                style: GoogleFonts.roboto(fontSize: 22, color: Colors.black),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 15),
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
                                border: Border.all(
                                    color: selected == index
                                        ? Colors.white
                                        : Colors.teal),
                                borderRadius: BorderRadius.circular(20),
                                color: selected == index
                                    ? Colors.tealAccent
                                    : Colors.white38),
                            child: Text(
                              decoration[index].title,
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
            GRiveItem()
          ],
        ),
      ),
    );
  }
}
