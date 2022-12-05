// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:palanateui/screen/Page13.dart';
import 'package:palanateui/screen/page14.dart';
import 'package:palanateui/weiged/const.dart';

class GriveViewDemo extends StatefulWidget {
  const GriveViewDemo({super.key});

  @override
  State<GriveViewDemo> createState() => _GriveViewDemoState();
}

class _GriveViewDemoState extends State<GriveViewDemo> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  login() {
    return showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) => Page13());
  }

  login1() {
    return showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) => Page14());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            login1();
            login();
          }),
          child: Icon(
            Icons.add,
            size: 25,
            color: Colors.white,
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
              onPressed: (() {
                Navigator.of(context).pop();
              }),
              icon: Icon(
                Icons.arrow_back_ios,
                size: 25,
                color: Colors.white,
              )),
          title: Text(
            "Maruf team",
            style: GoogleFonts.roboto(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.black,
        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: cardColor,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(bottom: 10, top: 7),
                                  child: ListTile(
                                    leading: Stack(
                                      children: [
                                        CircleAvatar(
                                          radius: 20,
                                          backgroundImage: NetworkImage(
                                              "https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/298267792_1432047977218490_2040140291139212763_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEk6TV8008OTBxZqqiZLrqXvZHW9p1MI469kdb2nUwjjloubnKBuuBy_QJ1KJzVkGmudMbJD7KXR61cRDWdKdzu&_nc_ohc=32cbm9BEpksAX8y3qdZ&_nc_ht=scontent.fdac31-1.fna&oh=00_AfBTIJSVZNsd8tW-r6rBPDdetSoltnKnwysdfgeeQw0_bg&oe=63623306"),
                                        ),
                                        Positioned(
                                            bottom: 4,
                                            right: 1,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: Colors.green,
                                              ),
                                              height: 10,
                                              width: 10,
                                            ))
                                      ],
                                    ),
                                    trailing: IconButton(
                                        onPressed: (() {}),
                                        icon: Icon(
                                          Icons.more_vert,
                                          size: 25,
                                          color: Colors.white,
                                        )),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text("Slinet Killer",
                                      style: GoogleFonts.roboto(
                                        fontSize: 14,
                                        color: Colors.white,
                                      )),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text("slientkiller@gmail.com",
                                      style: GoogleFonts.roboto(
                                        fontSize: 12,
                                        color: Colors.white,
                                      )),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: cardColor,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 7, bottom: 10),
                                  child: ListTile(
                                    leading: Stack(
                                      children: [
                                        CircleAvatar(
                                          radius: 20,
                                          backgroundImage: NetworkImage(
                                              "https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/298267792_1432047977218490_2040140291139212763_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEk6TV8008OTBxZqqiZLrqXvZHW9p1MI469kdb2nUwjjloubnKBuuBy_QJ1KJzVkGmudMbJD7KXR61cRDWdKdzu&_nc_ohc=32cbm9BEpksAX8y3qdZ&_nc_ht=scontent.fdac31-1.fna&oh=00_AfBTIJSVZNsd8tW-r6rBPDdetSoltnKnwysdfgeeQw0_bg&oe=63623306"),
                                        ),
                                        Positioned(
                                            bottom: 4,
                                            right: 1,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: Colors.green,
                                              ),
                                              height: 10,
                                              width: 10,
                                            ))
                                      ],
                                    ),
                                    trailing: IconButton(
                                        onPressed: (() {}),
                                        icon: Icon(
                                          Icons.more_vert,
                                          size: 25,
                                          color: Colors.white,
                                        )),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text("Slinet Killer",
                                      style: GoogleFonts.roboto(
                                        fontSize: 14,
                                        color: Colors.white,
                                      )),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text("slientkiller@gmail.com",
                                      style: GoogleFonts.roboto(
                                        fontSize: 12,
                                        color: Colors.white,
                                      )),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
