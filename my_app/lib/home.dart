// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        color: Colors.cyan,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey, width: 3)),
              child: CircleAvatar(
                radius: 75,
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTBQnU8yZhWLmd5GeW-1pPkUQmvOHN3a6d3g&usqp=CAU"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Nil onjona",
              style: GoogleFonts.lobster(
                  fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "She is a Sweet Girl ",
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
                  "nilpari407@gmail.com",
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
              style: GoogleFonts.lobster(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey, width: 3)),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://image.shutterstock.com/image-vector/facebook-icon-vector-illustration-social-260nw-2109892373.jpg'),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey, width: 3)),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://play-lh.googleusercontent.com/RLgRM7JfXhkHDQLgpOam614I3G58I874jPt6yVnzh3Cd2JzNk8h5mUwY4p48qbmH5Q=w600-h300-pc0xffffff-pd'),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey, width: 3)),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://images.news18.com/ibnlive/uploads/2022/03/instagram-logo-1.jpg'),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey, width: 3)),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
