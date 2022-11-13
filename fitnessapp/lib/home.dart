// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'dart:convert';
import 'package:fitnessapp/model/data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String link =
      "https://raw.githubusercontent.com/codeifitech/fitness-app/master/exercises.json?fbclid=IwAR36Dwn_P5TjbCViPydg7zD5EOeWf1GZreGmQF8RBWWs1jDBkoT1msVthBc";

  List<Exercise> allData = [];
  late Exercise exercise;
  var selected = 0;
  @override
  void initState() {
    fetchData();
    super.initState();
  }

  bool isLoading = false;
  fetchData() async {
    try {
      setState(() {
        isLoading = true;
      });
      var responce = await http.get(Uri.parse(link));
      print("status code is ${responce.statusCode}");
      if (responce.statusCode == 200) {
        var data = jsonDecode(responce.body);
        for (var i in data["exercises"]) {
          exercise = Exercise(
              id: i["id"],
              title: i["title"],
              thumbnail: i["thumbnail"],
              seconds: i["seconds"]);
          setState(() {
            allData.add(exercise);
          });
        }
        setState(() {
          isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      print("the problem is $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading == true,
      blur: 0.5,
      opacity: 0.5,
      progressIndicator: CircularProgressIndicator(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Text("Fitness+",
                      style: GoogleFonts.roboto(
                          fontSize: 22, color: Colors.white)),
                  trailing: IconButton(
                      onPressed: (() {}),
                      icon: Icon(
                        Icons.person_sharp,
                        size: 30,
                        color: Colors.white,
                      )),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 55,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        return InkWell(
                          onTap: (() {
                            setState(() {
                              selected = index;
                            });
                          }),
                          child: Row(
                            children: [
                              Container(
                                height: 43,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: selected == index
                                            ? Colors.white
                                            : Colors.teal),
                                    borderRadius: BorderRadius.circular(10),
                                    color: selected == index
                                        ? Colors.grey
                                        : Colors.cyan),
                                child: Text(
                                  allData[index].title.toString(),
                                  style: GoogleFonts.roboto(fontSize: 14),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 10),
                              ),
                            ],
                          ),
                        );
                      }),
                      separatorBuilder: (_, index) => SizedBox(
                            width: 10,
                          ),
                      itemCount: allData.length),
                ),
                ListTile(
                    leading: Text("Yoga for weakend",
                        style: GoogleFonts.roboto(
                            fontSize: 20, color: Colors.white)),
                    trailing: TextButton(
                        onPressed: (() {}),
                        child: Text("Show all",
                            style: GoogleFonts.roboto(fontSize: 16)))),
                Container(
                  height: 190,
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (contex, index) => GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 220,
                              width: 190,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 140,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.network(
                                        allData[index].thumbnail.toString(),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Text(allData[index].title.toString(),
                                      style: GoogleFonts.roboto(
                                          fontSize: 14, color: Colors.white)),
                                  Row(
                                    children: [
                                      Text(
                                        allData[index].seconds.toString(),
                                        style: GoogleFonts.roboto(
                                            fontSize: 14, color: Colors.white),
                                      ),
                                      Text(
                                        " min",
                                        style: GoogleFonts.roboto(
                                            fontSize: 14, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                      separatorBuilder: (_, index) => SizedBox(
                            width: 10,
                          ),
                      itemCount: allData.length),
                ),
                ListTile(
                    leading: Text("Time to Exercise",
                        style: GoogleFonts.roboto(
                            fontSize: 20, color: Colors.white)),
                    trailing: TextButton(
                        onPressed: (() {}),
                        child: Text("Show all",
                            style: GoogleFonts.roboto(fontSize: 16)))),
                Container(
                  height: 260,
                  width: double.infinity,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Container(
                            width: 325,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 260,
                                      child: Image.network(
                                        allData[index].thumbnail.toString(),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                        bottom: 10,
                                        left: 15,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text("id : ",
                                                    style: GoogleFonts.roboto(
                                                        fontSize: 18,
                                                        color: Colors.white)),
                                                Text(
                                                  allData[index].id.toString(),
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 18,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              "Time to Exercise ",
                                              style: GoogleFonts.roboto(
                                                  fontSize: 16,
                                                  color: Colors.white),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  allData[index]
                                                      .seconds
                                                      .toString(),
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 16,
                                                      color: Colors.green),
                                                ),
                                                Text(
                                                  "  Min",
                                                  style: GoogleFonts.roboto(
                                                      fontSize: 16,
                                                      color: Colors.green),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ))
                                  ],
                                )),
                          ),
                      separatorBuilder: (_, index) => SizedBox(
                            width: 10,
                          ),
                      itemCount: allData.length),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
