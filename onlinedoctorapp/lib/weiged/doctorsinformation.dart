// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onlinedoctorapp/listdemo.dart';
import 'package:onlinedoctorapp/model/tarbardemolist.dart';

class DoctorInfo extends StatefulWidget {
  const DoctorInfo({super.key});

  @override
  State<DoctorInfo> createState() => _DoctorInfoState();
}

class _DoctorInfoState extends State<DoctorInfo> {
  final maruf = Maruf.generatedMarufList();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 435,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: ListView.separated(
          scrollDirection: Axis.vertical,
          itemBuilder: (index, contex) => Container(
                height: 250,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(top: 15, left: 15, right: 15),
                          height: 135,
                          width: 130,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(maruf[contex].img,
                                  fit: BoxFit.cover)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              maruf[contex].name,
                              style: GoogleFonts.roboto(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              maruf[contex].occa,
                              style: GoogleFonts.roboto(fontSize: 16),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  maruf[contex].rating,
                                  style: GoogleFonts.roboto(fontSize: 14),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Text(
                            maruf[contex].price,
                            style: GoogleFonts.roboto(fontSize: 14),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            maruf[contex].star,
                            style: GoogleFonts.roboto(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 75),
                            child: MaterialButton(
                              minWidth: 50,
                              color: Color.fromARGB(255, 21, 73, 116),
                              onPressed: (() {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ListDemo()));
                              }),
                              child: Text(
                                "Connect",
                                style: GoogleFonts.roboto(fontSize: 14),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(
                height: 10,
              ),
          itemCount: 3),
    );
  }
}
