// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:palanateui/screen/griveveiwdemo.dart';
import 'package:palanateui/screen/loginpage.dart';
import 'package:palanateui/screen/teamsinfo.dart';
import 'package:palanateui/weiged/const.dart';

class BottomSheetDemo extends StatelessWidget {
  const BottomSheetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: cardColor,
        body: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 10),
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                      "https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/288020853_1394142407675714_3692136361548968487_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=174925&_nc_eui2=AeFgtWCvRQKtLXDpShSFKcwVV9Zi_wMRwmlX1mL_AxHCace06YQgg0E1zm7r4gNDmxdW6zIC0v4cAEYWKA6kSWYr&_nc_ohc=bmRzWYpiNc0AX-rqI4o&_nc_ht=scontent.fdac31-1.fna&oh=00_AfBwWNAi5hJ2RB0d8038ypMcrc7r29KTZcWu2gso_Q5KRA&oe=63624A29"),
                ),
              ),
              Text(
                "Congratulation!",
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              Text(
                "Maruf team create project Succesfully.",
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Text(
                " create  your latest project in work",
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Text(
                " with your team",
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: CustomeButton(
                  title: "Next",
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => GriveViewDemo()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
