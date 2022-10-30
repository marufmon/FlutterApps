// ignore_for_file: prefer_const_constructors

import 'package:day21/model/message.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page5 extends StatelessWidget {
  Message messageInfo;
  Page5(this.messageInfo);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 600,
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35), topRight: Radius.circular(35))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(messageInfo.logoURl),
              ),
              Text(
                messageInfo.company,
                style: GoogleFonts.roboto(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Icon(Icons.bookmark_add_outlined),
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                messageInfo.title,
                style: GoogleFonts.roboto(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
                    messageInfo.location,
                    style:
                        GoogleFonts.roboto(fontSize: 16, color: Colors.black),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.lock_clock,
                    size: 25,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    messageInfo.fullTime,
                    style: GoogleFonts.roboto(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Requirment',
            style: GoogleFonts.roboto(fontSize: 25),
          ),
          SizedBox(
            height: 15,
          ),
          ...messageInfo.req
              .map((e) => Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(15),
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black),
                        ),
                        Text(
                          e,
                          style: GoogleFonts.roboto(fontSize: 14),
                        ),
                      ],
                    ),
                  ))
              .toList(),
          SizedBox(
            height: 10,
          ),
          ...messageInfo.req
              .map((f) => Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(15),
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black),
                        ),
                        Text(
                          f,
                          style: GoogleFonts.roboto(fontSize: 14),
                        ),
                      ],
                    ),
                  ))
              .toList(),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(top: 80),
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.cyanAccent,
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                  child: Text(
                'Apply Now',
                style: TextStyle(
                  fontSize: 20,
                ),
              )),
            ),
          )
        ],
      ),
    );
  }
}
