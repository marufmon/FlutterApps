import 'package:day19/model/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  dynamic user = User.generatedUser();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Colors.white),
        child: ListView.separated(
            scrollDirection: Axis.vertical,
            itemBuilder: ((context, index) {
              return Container(
                padding: EdgeInsets.only(left: 15, top: 20),
                child: ListTile(
                  leading: CircleAvatar(
                      radius: 25, child: Image.asset(user[index].image)),
                  title: Text(
                    user[index].title,
                    style: GoogleFonts.lobster(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Text(
                    user[index].subtile,
                    style:
                        GoogleFonts.roboto(fontSize: 16, color: Colors.black87),
                  ),
                  trailing: Text(
                    user[index].time,
                    style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal),
                  ),
                ),
              );
            }),
            separatorBuilder: ((_, index) => SizedBox(
                  height: 10,
                )),
            itemCount: user.length),
      ),
    );
  }
}
