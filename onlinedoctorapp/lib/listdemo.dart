// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ListDemo extends StatefulWidget {
  const ListDemo({super.key});

  @override
  State<ListDemo> createState() => _ListDemoState();
}

class _ListDemoState extends State<ListDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 241, 241),
      body: Container(
        margin: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: IconButton(
                  onPressed: (() {
                    Navigator.of(context).pop();
                  }),
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 25,
                  ),
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, bottom: 5),
                child: Text(
                  "Choose",
                  style: GoogleFonts.roboto(fontSize: 30, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 5),
                child: Text(
                  "Consultation",
                  style: GoogleFonts.roboto(fontSize: 30, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 5),
                child: Text(
                  "Format",
                  style: GoogleFonts.roboto(fontSize: 30, color: Colors.black),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
                height: 130,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      leading: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          height: 50,
                          minWidth: 10,
                          color: Colors.green,
                          onPressed: (() {}),
                          child: Icon(Icons.whatsapp,
                              size: 25, color: Colors.white)),
                      title: Text(
                        "Join",
                        style: GoogleFonts.roboto(fontSize: 18),
                      ),
                      subtitle: Text(
                        "Live vedio call",
                        style: GoogleFonts.roboto(fontSize: 16),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      leading: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          height: 50,
                          minWidth: 10,
                          color: Color.fromARGB(255, 12, 102, 175),
                          onPressed: (() {}),
                          child: Icon(Icons.facebook,
                              size: 25, color: Colors.white)),
                      title: Text(
                        "Start",
                        style: GoogleFonts.roboto(fontSize: 18),
                      ),
                      subtitle: Text(
                        "Conversations",
                        style: GoogleFonts.roboto(fontSize: 16),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      leading: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          height: 50,
                          minWidth: 10,
                          color: Colors.green,
                          onPressed: (() {}),
                          child:
                              Icon(Icons.call, size: 25, color: Colors.white)),
                      title: Text(
                        "Contract",
                        style: GoogleFonts.roboto(fontSize: 18),
                      ),
                      subtitle: Text(
                        "Voice call",
                        style: GoogleFonts.roboto(fontSize: 16),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
