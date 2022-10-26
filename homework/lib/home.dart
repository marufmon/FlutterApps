// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey,
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.call,
                    size: 35,
                    color: Colors.lightBlue,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.teal, width: 3)),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://img.freepik.com/premium-photo/young-handsome-man-with-beard-isolated-keeping-arms-crossed-frontal-position_1368-132662.jpg?w=2000'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Hi Maruf',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Maruf is Sweet Boy :)',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(3, 3),
                        blurRadius: 4,
                        spreadRadius: 4,
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: Colors.grey),
                height: 140,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Flutter Developer",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      SizedBox(
                        height: 4,
                      ),
                      Text("Mobile & Ios",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.white)),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.teal, width: 3)),
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://img.freepik.com/premium-photo/young-handsome-man-with-beard-isolated-keeping-arms-crossed-frontal-position_1368-132662.jpg?w=2000'),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.teal, width: 3)),
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          'https://img.freepik.com/premium-photo/young-handsome-man-with-beard-isolated-keeping-arms-crossed-frontal-position_1368-132662.jpg?w=2000'),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Now",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white)),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("He is Hard Working ",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.white)),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.access_alarm,
                      size: 31,
                      color: Colors.lightBlue,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(35, 30, 10, 10),
                        child: ListTile(
                          title: Text(
                            '50',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          subtitle: Text(
                            'Yes',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(3, 3),
                            blurRadius: 5,
                            spreadRadius: 5,
                          )
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      height: 150,
                      width: 150,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 10, 10, 10),
                        child: ListTile(
                          title: Text(
                            '100',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          subtitle: Text(
                            'Develop',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(3, 3),
                            blurRadius: 5,
                            spreadRadius: 5,
                          )
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      height: 100,
                      width: 150,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
                            child: ListTile(
                              title: Text(
                                '56',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              subtitle: Text(
                                'No',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(3, 3),
                                blurRadius: 5,
                                spreadRadius: 5,
                              )
                            ],
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey,
                          ),
                          height: 100,
                          width: 150,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 25, 12, 10),
                            child: ListTile(
                              title: Text(
                                '77',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              subtitle: Text(
                                'Mobile',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(3, 3),
                                blurRadius: 5,
                                spreadRadius: 5,
                              )
                            ],
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey,
                          ),
                          height: 150,
                          width: 150,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.home,
                  size: 35,
                  color: Colors.lightBlue,
                ),
                Icon(
                  Icons.add_alert,
                  size: 35,
                  color: Colors.lightBlue,
                ),
                Icon(
                  Icons.delete,
                  size: 35,
                  color: Colors.lightBlue,
                ),
                Icon(
                  Icons.settings,
                  size: 35,
                  color: Colors.lightBlue,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
