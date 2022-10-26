import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/298267792_1432047977218490_2040140291139212763_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEk6TV8008OTBxZqqiZLrqXvZHW9p1MI469kdb2nUwjjloubnKBuuBy_QJ1KJzVkGmudMbJD7KXR61cRDWdKdzu&_nc_ohc=le5s3hwUlSwAX_Ik4jB&_nc_ht=scontent.fdac31-1.fna&oh=00_AT_hrClIv-F_TdtJoAA5fNS7DqTOyVRa_xi9QtvRsWNonQ&oe=634E6C86"),
                fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: IconButton(
                onPressed: (() {
                  Navigator.pop(context);
                }),
                icon: Icon(Icons.arrow_back),
                iconSize: 30,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
