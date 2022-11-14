// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'package:fitnessapi_app/fitnessexerciesdetails.dart';
import 'package:fitnessapi_app/model/datalist.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String link =
      "https://raw.githubusercontent.com/codeifitech/fitness-app/master/exercises.json?fbclid=IwAR3WB8w4Gd48zDsKjHjUdH_m3V3SU721kVvD0hEWFZCOqVod8p15rirNFV0";
  List<ExerciseModel> allData = [];
  late ExerciseModel exerciseModel;
  bool? isLoading;
  fetchData() async {
    var response = await http.get(Uri.parse(link));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)["exercises"];
      for (var i in data) {
        exerciseModel = ExerciseModel(
            id: i["id"],
            title: i["title"],
            gif: i["gif"],
            thumbnil: i["thumbnail"],
            seconds: i["seconds"]);
        setState(() {
          allData.add(exerciseModel);
        });
      }
    }
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.separated(
              itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => FitnessExerciseDetails()));
                    },
                    child: Stack(
                      children: [
                        Container(
                            height: 220,
                            width: double.infinity,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                  allData[index].thumbnil.toString(),
                                  fit: BoxFit.cover,
                                ))),
                        Positioned(
                            bottom: 10,
                            left: 15,
                            child: Column(
                              children: [
                                Text(
                                  allData[index].title.toString(),
                                  style: GoogleFonts.roboto(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
              separatorBuilder: (_, index) => SizedBox(
                    height: 15,
                  ),
              itemCount: allData.length),
        ),
      ),
    );
  }
}
