// ignore_for_file: prefer_const_constructors

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:palanateui/screen/loginpage.dart';
import 'package:palanateui/screen/profillogin3.dart';

class Longin9 extends StatefulWidget {
  const Longin9({super.key});

  @override
  State<Longin9> createState() => _Longin9State();
}

class _Longin9State extends State<Longin9> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Column(
            children: [
              ListTile(
                leading: IconButton(
                    onPressed: (() {
                      Navigator.of(context).pop();
                    }),
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 0, bottom: 15),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 25,
                        color: Colors.white,
                      ),
                    )),
                title: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blueAccent,
                        ),
                        height: 7,
                        width: 25,
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.lightBlue,
                        ),
                        height: 7,
                        width: 25,
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white38,
                        ),
                        height: 7,
                        width: 15,
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white38,
                        ),
                        height: 7,
                        width: 15,
                      ),
                      Container(
                        margin: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white38,
                        ),
                        height: 7,
                        width: 15,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: CustomeButton(
                  title: "Create your own teams",
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Login10()));
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "OR",
                style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: CustomeButton(
                  isBlue: true,
                  title: "Join team",
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Login10()));
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
