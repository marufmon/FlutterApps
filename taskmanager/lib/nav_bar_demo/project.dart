// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:palanateui/screen/projentstyledemo.dart';
import 'package:palanateui/weiged/const.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  login() {
    return showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) => ProjectStyleDemo());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          login();
        },
        child: Icon(
          Icons.add,
          size: 25,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.black,
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
          "Project Details",
          style: GoogleFonts.roboto(fontSize: 16, color: Colors.white),
        ),
        actions: [
          Icon(
            Icons.more_vert,
            size: 25,
            color: Colors.white,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: cardColor),
              margin: EdgeInsets.only(right: 10, left: 10, top: 10),
              height: 205,
              width: double.infinity,
              child: Container(
                margin: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Web design - PT Manceri\n Cinta Sejati",
                      style:
                          GoogleFonts.roboto(fontSize: 25, color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.circle,
                          size: 10,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "12 tasks",
                          style: GoogleFonts.roboto(
                              fontSize: 12, color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Goals",
                      style:
                          GoogleFonts.roboto(fontSize: 16, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Bangladesh is sweet Cute Country in the world\n it is so small\n We are pround of my country\n it very peasful.",
                      style:
                          GoogleFonts.roboto(fontSize: 16, color: Colors.white),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_month,
                          size: 15,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "March 13, 17:30 PM",
                          style: GoogleFonts.roboto(
                              fontSize: 12, color: Colors.white),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.calendar_month,
                          size: 15,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Mediam project",
                          style: GoogleFonts.roboto(
                              fontSize: 12, color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  color: cardColor),
              margin: EdgeInsets.only(left: 8, right: 8, top: 8),
              height: double.infinity,
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 5),
                        child: Text(
                          "Tasks 5/12",
                          style: GoogleFonts.roboto(
                              fontSize: 16, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 10,
                            width: 200,
                            color: Colors.grey,
                          ),
                          Positioned(
                              child: Container(
                            height: 10,
                            width: 140,
                            color: Colors.purple,
                          ))
                        ],
                      )
                    ],
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.add_box,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Resarch analysis",
                      style:
                          GoogleFonts.roboto(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.add_box,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Design System",
                      style:
                          GoogleFonts.roboto(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.add_box,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Wirefirms",
                      style:
                          GoogleFonts.roboto(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.add_box,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Protocal",
                      style:
                          GoogleFonts.roboto(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
