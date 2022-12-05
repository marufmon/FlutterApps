// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:palanateui/model/myclass.dart';
import 'package:palanateui/weiged/const.dart';

class MyTask extends StatelessWidget {
  const MyTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                margin: EdgeInsets.only(bottom: 32),
                height: 60,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                          "https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/288020853_1394142407675714_3692136361548968487_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=174925&_nc_eui2=AeFgtWCvRQKtLXDpShSFKcwVV9Zi_wMRwmlX1mL_AxHCace06YQgg0E1zm7r4gNDmxdW6zIC0v4cAEYWKA6kSWYr&_nc_ohc=bmRzWYpiNc0AX-rqI4o&_nc_ht=scontent.fdac31-1.fna&oh=00_AfBwWNAi5hJ2RB0d8038ypMcrc7r29KTZcWu2gso_Q5KRA&oe=63624A29"),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Maruf Team",
                      style: myStyle(16, Colors.grey),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    ),
                    Spacer(),
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Project Task",
                  style: myStyle(16, Colors.grey),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16, top: 16, bottom: 16),
                height: 62,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 12),
                        width: 130,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: cardColor,
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 12),
                              width: 5,
                              color: Colors.brown,
                            ),
                            Expanded(
                              //color:Colors.red,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "5",
                                    style: myStyle(22, Colors.white),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    "Ongoing",
                                    style: myStyle(16, Colors.grey),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Task",
                      style: myStyle(16, Colors.grey),
                    ),
                    Text(
                      "See All",
                      style: myStyle(16, Colors.grey),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: myList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(16),
                      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      height: 110,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: cardColor),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.check_box_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                          Expanded(
                            flex: 10,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "${myList[index].title}",
                                      style: myStyle(16, Colors.white),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 8),
                                      decoration: BoxDecoration(
                                        color: myList[index]
                                            .color
                                            .withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Text(
                                        "${myList[index].taskName}",
                                        style: myStyle(14, myList[index].color),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: 5,
                                            decoration: BoxDecoration(
                                              color: myList[index]
                                                  .color
                                                  .withOpacity(0.2),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                          ),
                                          LayoutBuilder(
                                              builder: (context, constraints) {
                                            return Container(
                                              height: 5,
                                              width: constraints.maxWidth *
                                                  myList[index].percentage /
                                                  100,
                                              decoration: BoxDecoration(
                                                color: myList[index].color,
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                            );
                                          })
                                        ],
                                      ),
                                    ),
                                    Text(
                                      "7/50",
                                      style: myStyle(16, Colors.white),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      maxRadius: 8,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "2 days left",
                                      style: myStyle(16, Colors.white),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
