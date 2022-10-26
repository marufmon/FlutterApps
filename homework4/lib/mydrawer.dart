// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homework4/page1.dart';
import 'package:homework4/page2.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      "https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/298267792_1432047977218490_2040140291139212763_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEk6TV8008OTBxZqqiZLrqXvZHW9p1MI469kdb2nUwjjloubnKBuuBy_QJ1KJzVkGmudMbJD7KXR61cRDWdKdzu&_nc_ohc=le5s3hwUlSwAX_Ik4jB&_nc_ht=scontent.fdac31-1.fna&oh=00_AT_hrClIv-F_TdtJoAA5fNS7DqTOyVRa_xi9QtvRsWNonQ&oe=634E6C86",
                    ),
                    fit: BoxFit.cover),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10, top: 60),
                    child: CircleAvatar(
                      radius: 25,
                      child: Icon(Icons.upcoming),
                      backgroundColor: Colors.tealAccent,
                    ),
                  ),
                  Text(
                    " Md Maruf",
                    style: GoogleFonts.lobster(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  Text(
                    " Flutter Developer",
                    style: GoogleFonts.roboto(
                        color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.w900),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  DrawerItem(
                    icon: Icons.person,
                    title: "Profile",
                    color: Colors.lightBlue,
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Page2()));
                    },
                  ),
                  DrawerItem(
                    icon: Icons.people,
                    title: "Friends",
                    color: Colors.teal,
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Page2()));
                    },
                  ),
                  DrawerItem(
                    icon: Icons.school,
                    title: "School",
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Page2()));
                    },
                  ),
                  DrawerItem(
                    icon: Icons.food_bank,
                    title: "Food Bank",
                    color: Colors.green,
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Page2()));
                    },
                  ),
                  DrawerItem(
                    icon: Icons.bloodtype,
                    title: "Blood",
                    color: Colors.red,
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Page2()));
                    },
                  ),
                  DrawerItem(
                    icon: Icons.search,
                    title: "Search",
                    color: Colors.blue,
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Page2()));
                    },
                  ),
                  DrawerItem(
                    icon: Icons.whatsapp,
                    title: "whatsApp",
                    color: Colors.green,
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Page2()));
                    },
                  ),
                  Spacer(),
                  Divider(
                    height: 0.5,
                    color: Colors.grey,
                  ),
                  DrawerItem(
                    icon: Icons.login,
                    color: Colors.green,
                    title: "Login",
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Page2()));
                    },
                  ),
                  DrawerItem(
                    icon: Icons.logout,
                    title: "Logout",
                    color: Colors.red,
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Page1()));
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  DrawerItem({this.icon, this.title, this.onTap, this.color});
  String? title;
  Color? color;
  IconData? icon;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: onTap,
          icon: Icon(icon),
          iconSize: 25,
          color: color,
        ),
        Text(
          "$title",
          style: GoogleFonts.roboto(
              fontSize: 14, fontWeight: FontWeight.w900, color: Colors.black),
        ),
      ],
    );
  }
}
