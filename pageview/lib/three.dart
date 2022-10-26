import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Three extends StatelessWidget {
  const Three({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: InkWell(
            onTap: (() {
              Navigator.of(context).pop();
            }),
            child: Icon(Icons.arrow_back)),
        title: Text(
          "Back",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
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
                            'https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/298267792_1432047977218490_2040140291139212763_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=kNoV8vA0YCgAX87m-_h&_nc_ht=scontent.fdac31-1.fna&oh=00_AT_Dwxoc6vPV7OYGfCKhC8gdvxecnxkmUgjinj0fLt2VPw&oe=63487DC6'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Maruf',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '01718511795',
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
                      boxShadow: const [
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
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgqVWQamwxTQz9LjFUnrDfQIjazgR7NEs0dQ&usqp=CAU'),
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
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRs01z8LArAfyiEbeuSnbSo_RMPiAJtvb14YQ&usqp=CAU'),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: const [
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
                    children: const [
                      Text("He is Hard Working ",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Colors.white)),
                    ],
                  ),
                  Row(
                    children: const [
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
                        decoration: BoxDecoration(
                          boxShadow: const [
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
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: const [
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
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: const [
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
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(15, 10, 10, 10),
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
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: const [
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
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(20, 25, 12, 10),
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
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
