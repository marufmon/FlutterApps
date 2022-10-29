// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:palanateui/weiged/const.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
              padding: const EdgeInsets.all(1.0),
              child: TextButton(
                  onPressed: (() {}),
                  child: Text(
                    "Profile",
                    style: GoogleFonts.roboto(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ))),
          actions: [
            TextButton(
                onPressed: (() {}),
                child: Text(
                  "Sing Out",
                  style: GoogleFonts.roboto(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ))
          ],
        ),
        backgroundColor: Colors.black,
        body: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                    "https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/298267792_1432047977218490_2040140291139212763_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEk6TV8008OTBxZqqiZLrqXvZHW9p1MI469kdb2nUwjjloubnKBuuBy_QJ1KJzVkGmudMbJD7KXR61cRDWdKdzu&_nc_ohc=32cbm9BEpksAX8y3qdZ&_nc_ht=scontent.fdac31-1.fna&oh=00_AfBTIJSVZNsd8tW-r6rBPDdetSoltnKnwysdfgeeQw0_bg&oe=63623306"),
              ),
              title: Text(
                "Silent Killer",
                style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              subtitle: Text(
                "UI design team",
                style: GoogleFonts.roboto(fontSize: 12, color: Colors.white),
              ),
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    leading: Text(
                      "Account",
                      style:
                          GoogleFonts.roboto(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: Text(
                      "Infomation",
                      style:
                          GoogleFonts.roboto(fontSize: 16, color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.arrow_right,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    leading: Text(
                      "Change Password",
                      style:
                          GoogleFonts.roboto(fontSize: 16, color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.arrow_right,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    leading: Text(
                      "My Team",
                      style:
                          GoogleFonts.roboto(fontSize: 16, color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.arrow_right,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    leading: Text(
                      "Notification",
                      style:
                          GoogleFonts.roboto(fontSize: 16, color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.arrow_right,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              height: 300,
              width: 330,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: cardColor),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    leading: Text(
                      "Help",
                      style:
                          GoogleFonts.roboto(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: Text(
                      "Licenses",
                      style:
                          GoogleFonts.roboto(fontSize: 16, color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.arrow_right,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    leading: Text(
                      "Privecy",
                      style:
                          GoogleFonts.roboto(fontSize: 16, color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.arrow_right,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              height: 200,
              width: 330,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: cardColor),
            )
          ],
        ),
      ),
    );
  }
}
