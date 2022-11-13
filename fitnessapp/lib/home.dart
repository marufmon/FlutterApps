// ignore_for_file: empty_catches, prefer_const_constructors
import 'dart:convert';
import 'package:fitnessapp/mode/exercisemodeldata.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String link =
      "https://raw.githubusercontent.com/codeifitech/fitness-app/master/exercises.json?fbclid=IwAR2R33gOGV3Wh3VcTGrA0d_GtYhWzCxSV8C_u1zDDl2ZwxZQCvPFqGKOngc";
  List<ExerciseModel> allData = [];
  late ExerciseModel exerciseModel;
  bool isLoading = false;
  fetchData() async {
    try {
      setState(() {
        isLoading = true;
      });
      var response = await http.get(Uri.parse(link));
      print("our response is: ${response.statusCode}");
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body)["exercise"];
        for (var i in data) {
          exerciseModel = ExerciseModel(
              id: i["id"],
              gif: i["gif"],
              thumbnil: i["thumbnil"],
              second: i["seconds"],
              title: i["title"]);
          setState(() {
            allData.add(exerciseModel);
            print(allData);
          });
        }
      }
      setState(() {
        isLoading = false;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    fetchData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: allData.length,
        itemBuilder: (context, index) => Container(
          child: Text("${allData[index].title}"),
        ),
        shrinkWrap: true,
      ),
    );
  }
}
