// ignore_for_file: prefer_const_constructors, sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onlinedoctorapp/model/tarbardemolist.dart';
import 'package:onlinedoctorapp/weiged/doctorsinformation.dart';

class DoctorList extends StatefulWidget {
  const DoctorList({super.key});

  @override
  State<DoctorList> createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  final maruf = Maruf.generatedMarufList();
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 232, 232),
      body: Container(
        height: 780,
        margin: EdgeInsets.only(top: 40, bottom: 20),
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
                title: Text(
                  "Doctors",
                  style: GoogleFonts.roboto(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                    onPressed: (() {}),
                    icon: Icon(
                      Icons.search,
                      size: 35,
                    )),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.blue),
                margin: EdgeInsets.all(15),
                height: 60,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 7,
                      ),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        height: 50,
                        minWidth: 180,
                        color: Colors.white,
                        onPressed: (() {}),
                        child: Text(
                          "Online",
                          style: GoogleFonts.roboto(
                              fontSize: 16, color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: TextButton(
                          onPressed: (() {}),
                          child: Text(
                            "Visit",
                            style: GoogleFonts.roboto(
                                fontSize: 16, color: Colors.black),
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 15),
                child: Text(
                  "Let's find your Doctors",
                  style: GoogleFonts.roboto(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
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
                                maruf[index].title,
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
                    itemCount: maruf.length),
              ),
              DoctorInfo()
            ],
          ),
        ),
      ),
    );
  }
}
