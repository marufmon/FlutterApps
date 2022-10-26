// ignore_for_file: prefer_const_constructors, unused_field, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Three extends StatefulWidget {
  const Three({super.key});

  @override
  State<Three> createState() => _ThreeState();
}

class _ThreeState extends State<Three> {
  List<String> _product = [
    'Vegetables',
    'Banana',
    'Mango',
    'Potato',
    'Tomato',
    'Apple',
    'Orang',
  ];
  final imgList = [
    'images/apple3.jpg',
    'images/banana5.jpg',
    'images/orang4.jpg',
    'images/Broccoli-florets.webp',
    'images/healthy-veget2.jpg',
    'images/di133_kv_okinawan-island-vegetables.jpg',
    'images/dole-produce-veg-medley.webp'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white38,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: (() {
                  Navigator.of(context).pop();
                }),
                icon: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.black,
                )),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Welcome to my food shope :)",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: Text(
                "Welcome to my food shope :)",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("40% discount"),
                          ),
                          height: 100,
                          width: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.lightBlue),
                        ),
                        Positioned(
                            left: 80,
                            top: 50,
                            child: Image.network(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDx5t_RrjXHy_Noi-rR-YaC3ggjA1fq1EzEg&usqp=CAU"))
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Stack(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("50% discount"),
                          ),
                          height: 100,
                          width: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.yellow),
                        ),
                        Positioned(
                            left: 80,
                            top: 50,
                            child: Image.network(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDx5t_RrjXHy_Noi-rR-YaC3ggjA1fq1EzEg&usqp=CAU"))
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Stack(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("20% discount"),
                          ),
                          height: 100,
                          width: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.cyan),
                        ),
                        Positioned(
                            left: 80,
                            top: 50,
                            child: Image.network(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDx5t_RrjXHy_Noi-rR-YaC3ggjA1fq1EzEg&usqp=CAU"))
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Stack(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("10% discount"),
                          ),
                          height: 100,
                          width: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.tealAccent),
                        ),
                        Positioned(
                            left: 80,
                            top: 50,
                            child: Image.network(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDx5t_RrjXHy_Noi-rR-YaC3ggjA1fq1EzEg&usqp=CAU"))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "categories",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    "view all",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _product.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Text(
                        _product[index],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 30, right: 10, bottom: 20),
              height: 300,
              width: 300,
              child: GridView.count(
                  children: List.generate(imgList.length, (index) {
                    return Container(
                      child: Image.asset(imgList[index]),
                    );
                  }),
                  crossAxisCount: 2),
            )
          ],
        ),
      ),
    );
  }
}
