import 'dart:convert';
import 'package:fitnessapp/model/data.dart';
import 'package:flutter/material.dart';
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
      child: Scaffold(
        body: ListView.builder(
            shrinkWrap: true,
            itemCount: allData.length,
            itemBuilder: (context, index) {
              return Text("${allData[index].title}");
            }),
      ),
    );
  }
}
