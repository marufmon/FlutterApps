// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pageview/four.dart';
import 'package:pageview/one.dart';
import 'package:pageview/three.dart';
import 'package:pageview/two.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 3)),
            child: CircleAvatar(
              radius: 75,
              backgroundImage: NetworkImage(
                  "https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/298267792_1432047977218490_2040140291139212763_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=kNoV8vA0YCgAX87m-_h&_nc_ht=scontent.fdac31-1.fna&oh=00_AT_Dwxoc6vPV7OYGfCKhC8gdvxecnxkmUgjinj0fLt2VPw&oe=63487DC6"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Maruf",
            style:
                GoogleFonts.lobster(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "Flutter Developer ",
            style:
                GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Colors.blueGrey),
            child: ListTile(
              leading: Icon(
                Icons.phone,
                size: 25,
                color: Colors.blue,
              ),
              title: Text(
                "01718511795",
                style: GoogleFonts.roboto(
                    fontSize: 16, fontWeight: FontWeight.w600),
              ),
              trailing: Icon(
                Icons.call_missed,
                size: 25,
                color: Colors.red,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Colors.blueGrey),
            child: ListTile(
              leading: Icon(
                Icons.email,
                size: 25,
                color: Colors.blue,
              ),
              title: Text(
                "maruf407@gmail.com",
                style: GoogleFonts.roboto(
                    fontSize: 16, fontWeight: FontWeight.w600),
              ),
              trailing: Icon(
                Icons.attach_email,
                size: 25,
                color: Colors.teal,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "About Us",
            style:
                GoogleFonts.lobster(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: (() {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => One()));
                  }),
                  icon: Icon(
                    Icons.facebook,
                    size: 45,
                    color: Color.fromARGB(255, 9, 120, 211),
                  )),
              IconButton(
                  onPressed: (() {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Two()));
                  }),
                  icon: Icon(
                    Icons.whatsapp,
                    size: 45,
                    color: Color.fromARGB(255, 23, 109, 26),
                  )),
              IconButton(
                  onPressed: (() {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Three()));
                  }),
                  icon: Icon(
                    Icons.person,
                    size: 45,
                    color: Color.fromARGB(255, 9, 120, 211),
                  )),
              IconButton(
                  onPressed: (() {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Four()));
                  }),
                  icon: Icon(
                    Icons.login,
                    size: 45,
                    color: Colors.red,
                  )),
            ],
          )
        ],
      ),
    ));
  }
}
