// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'dart:convert';
import 'package:fitnessapi_app/thubnailpage.dart';
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
            thumbnail: i["thumbnail"],
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
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.separated(
              itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              ThumbnailPage(exerciseModel: allData[index])));
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: 220,
                          width: double.infinity,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: CachedNetworkImage(
                              width: double.infinity,
                              fit: BoxFit.cover,
                              imageUrl: allData[index].thumbnail.toString(),
                              placeholder: (context, url) => Image.network(
                                  "https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/298267792_1432047977218490_2040140291139212763_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEk6TV8008OTBxZqqiZLrqXvZHW9p1MI469kdb2nUwjjloubnKBuuBy_QJ1KJzVkGmudMbJD7KXR61cRDWdKdzu&_nc_ohc=DC2BkGNBDosAX8DOuc9&_nc_ht=scontent.fdac31-1.fna&oh=00_AfBy3FmNdIdQeu37kxjQKjvoWHyL7zbwMBs8Vn5b6WBqFw&oe=6377F3C6"),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,  
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 60,
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 16),
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              allData[index].title.toString(),
                              style: GoogleFonts.roboto(
                                  fontSize: 20, color: Colors.white),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.black,
                                      Colors.black54,
                                      Colors.transparent
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter)),
                          ),
                        )
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
