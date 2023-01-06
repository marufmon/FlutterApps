// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:searchapp/mode/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController searchController = TextEditingController();
  static List<DecorationList> generetedDecorationList = [
    DecorationList("Matttle room", "All", "\$ 39.0", "Wide Space",
        "images/de7.jpg", 0, 0, 39),
    DecorationList("Execcute room", "Drawing", "\$ 29.0", "well Decoration",
        "images/de10.jpg", 0, 0, 29),
    DecorationList("Master bed", "Acccessories", "\$ 49.0", "Full Decore",
        "images/de3.jpg", 0, 0, 49),
    DecorationList("Drawing room", "Bed", "\$ 71.0", "Colors pointing",
        "images/de4.jpg", 0, 0, 71),
    DecorationList(
        "Dinnig room", "Sopa", "\$ 75.0", "Best", "images/de5.jpg", 0, 1, 75),
    DecorationList("Reading room", "table", "\$ 32.0", "simple",
        "images/de8.jpg", 0, 0, 32),
    DecorationList("Matttle room", "All", "\$ 39.0", "Wide Space",
        "images/de7.jpg", 0, 0, 39),
    DecorationList("Execcute room", "Drawing", "\$ 29.0", "well Decoration",
        "images/de10.jpg", 0, 0, 29),
    DecorationList("Master bed", "Acccessories", "\$ 49.0", "Full Decore",
        "images/de3.jpg", 0, 0, 49),
    DecorationList("Drawing room", "Bed", "\$ 71.0", "Colors pointing",
        "images/de4.jpg", 0, 0, 71),
    DecorationList(
        "Dinnig room", "Sopa", "\$ 75.0", "Best", "images/de5.jpg", 0, 1, 75),
    DecorationList("Reading room", "table", "\$ 32.0", "simple",
        "images/de8.jpg", 0, 0, 32),
  ];
  List<DecorationList> decoration = List.from(generetedDecorationList);
  void updateList(String value) {
    setState(() {
      generetedDecorationList = decoration
          .where((element) =>
              element.subtitle.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: double.infinity,
        padding: EdgeInsets.only(top: 50, right: 10, left: 10),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => updateList(value),
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              controller: searchController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search......',
                  filled: true,
                  fillColor: Colors.white),
            ),
            Expanded(
              child: decoration == 0
                  ? Center(
                      child: Text(
                        "Somethis error",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  : ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: generetedDecorationList.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Card(
                        color: Colors.white,
                        elevation: 2,
                        child: ListTile(
                          leading: Container(
                            height: 60,
                            width: 60,
                            child: Image.asset(
                              decoration[index].image,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: Text(
                            decoration[index].title,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            decoration[index].subtitle,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Text(
                            decoration[index].prices.toString(),
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
