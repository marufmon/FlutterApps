// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class One extends StatelessWidget {
  const One({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: MediaQuery.of(context).size.width * 0.75,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      child: Image.network(
                        "https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/301060633_1442907832799171_2582076914949837936_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=e3f864&_nc_ohc=rJVxxSk1sxAAX_ouU-F&_nc_ht=scontent.fdac31-1.fna&oh=00_AT9Hfu8gnoGv5SZv-JQSogrULmsJlnqNIsC2o0JfTDF3EA&oe=63485A55",
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 120,
                  right: 90,
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey, width: 3)),
                    child: Center(
                      child: CircleAvatar(
                        radius: 81,
                        backgroundImage: NetworkImage(
                            "https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/298267792_1432047977218490_2040140291139212763_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=kNoV8vA0YCgAX87m-_h&_nc_ht=scontent.fdac31-1.fna&oh=00_AT_Dwxoc6vPV7OYGfCKhC8gdvxecnxkmUgjinj0fLt2VPw&oe=63487DC6"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              " Md Maruf",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Love is rare",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white30),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              " where money is absence",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white30),
            ),
            SizedBox(
              height: 5,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width * 0.60,
                        child: ElevatedButton.icon(
                            onPressed: (() {}),
                            icon: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 10,
                              child: Icon(
                                Icons.add,
                                color: Colors.blue,
                                size: 20,
                              ),
                            ),
                            label: Text(
                              "Add",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            )),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width * 0.20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(9)),
                            color: Colors.grey),
                        child: IconButton(
                            onPressed: (() {}), icon: Icon(Icons.more_horiz)),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 5,
                  color: Colors.white,
                ),
                ListTile(
                  leading: Icon(
                    Icons.school,
                    size: 30,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    " Studied at Departman of CSE,DIU-Dhaka International University",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.school,
                    size: 30,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    " Studied at Gaibandha Govt.College,Gaibandha",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.home,
                    size: 30,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    " Live in Gaibandha,Bangladesh",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.location_city,
                    size: 30,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    " From Rangpur Dhaka,Bangladesh",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.favorite,
                    size: 30,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    " Single",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                ),
                Container(
                  height: 38,
                  width: MediaQuery.of(context).size.width * 0.75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(9)),
                      color: Colors.blue),
                  child: TextButton(
                      onPressed: (() {}),
                      child: Text(
                        "Edit public details",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.white,
                  height: 10,
                ),
                ListTile(
                  leading: Text(
                    "Friends",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  trailing: Text("Find Friends",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.blue)),
                ),
                ListTile(
                  leading: Text(
                    "436 friends",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white54),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 110,
                                width: 110,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.network(
                                      "https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/290650406_3401272440195881_8103668235950999996_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=v23xeSRwQ4MAX8sZyoe&_nc_ht=scontent.fdac31-1.fna&oh=00_AT-t-NdWgLo8SYjZn6SDdp4TZL_pW-tJFLI5qu-ahL0h2w&oe=6348E936"),
                                ),
                              ),
                              Text(
                                "Marzan",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 110,
                            width: 110,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.network(
                                  "https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/293548141_1496767507405470_8557744850596832448_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=jk6us6sBXewAX-po_zN&_nc_ht=scontent.fdac31-1.fna&oh=00_AT-0_WlD3-Wi6Hn1bFGiV6s-Z8dw_IyiM9g8N3W924Zx0A&oe=63480AE0"),
                            ),
                          ),
                          Text(
                            "Atik",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 110,
                            width: 110,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.network(
                                  "https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/277176198_114962031147594_749602918829140397_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=6EozLK2MBrcAX_q_Pv3&_nc_ht=scontent.fdac31-1.fna&oh=00_AT9FqXiI_UBIUVWhTBRaLa_0nmnEdl71LUY-ObNawmK8Ug&oe=63485EFA"),
                            ),
                          ),
                          Text(
                            "Rumpa",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 110,
                                width: 110,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                      "https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/298963884_391783516398301_6276110827151839208_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=mOCMfyn0z9AAX9hQ8GG&_nc_ht=scontent.fdac31-1.fna&oh=00_AT_XTcxOFnb_lpPuhAopGymG6LjOzUiFl_hu5AVIAUGDLQ&oe=63485015"),
                                ),
                              ),
                              Text(
                                "Marufa",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 110,
                                width: 110,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.network(
                                      "https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/290845114_3118805368430007_7953724456520683761_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=PtjG4pHiJ-wAX9UiqP_&_nc_ht=scontent.fdac31-1.fna&oh=00_AT-nF82SWBGQqE07h73MtuP0v4BHK2dMT7mkBmWVUyxcFA&oe=6349148B"),
                                ),
                              ),
                              Text(
                                "Nitish",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 110,
                                width: 110,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                      "https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/286078743_1584076758653121_8132826564434879998_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=ahO_IVSH86QAX-EfB83&tn=UM-58rhrSTnNpEwR&_nc_ht=scontent.fdac31-1.fna&oh=00_AT-y2k-dBmnJNd1DvcCm8LAqQjwgzt06k2O9Ec5y9ogq3g&oe=634867A2"),
                                ),
                              ),
                              Text(
                                "Nazmul",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 38,
                  width: MediaQuery.of(context).size.width * 0.75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(9)),
                      color: Colors.grey),
                  child: TextButton(
                      onPressed: (() {}),
                      child: Text(
                        "See all friends",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      )),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
