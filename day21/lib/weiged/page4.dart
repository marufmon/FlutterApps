// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:day21/model/message.dart';
import 'package:day21/weiged/page5.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  final message = Message.generatedMessageList();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      padding: EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 15),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => InkWell(
                onTap: (() {
                  showModalBottomSheet(
                      backgroundColor: Colors.grey,
                      isScrollControlled: true,
                      context: context,
                      builder: (context) => Page5(message[index]));
                }),
                child: Container(
                  padding: EdgeInsets.all(15),
                  width: 270,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.black12,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(message[index].logoURl),
                          ),
                          Text(
                            message[index].company,
                            style: GoogleFonts.roboto(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.bookmark_add_outlined)
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        message[index].title,
                        style: GoogleFonts.roboto(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 25,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            message[index].location,
                            style: GoogleFonts.roboto(
                                fontSize: 16, color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 10,
              ),
          itemCount: message.length),
    );
  }
}
