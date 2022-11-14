// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

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
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.separated(
              itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SecondPage()));
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
                              imageUrl: allData[index].thumbnil.toString(),
                              placeholder: (context, url) => Image.network(
                                  "https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/288020853_1394142407675714_3692136361548968487_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=174925&_nc_eui2=AeFgtWCvRQKtLXDpShSFKcwVV9Zi_wMRwmlX1mL_AxHCace06YQgg0E1zm7r4gNDmxdW6zIC0v4cAEYWKA6kSWYr&_nc_ohc=-5opNCygNGgAX8YLe_U&_nc_ht=scontent.fdac31-1.fna&oh=00_AfBmmP_3kNcYwrNVLF0eqq02GnCM5xf7Wdi4dFEbglKtyw&oe=63780AE9"),
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
                                  fontSize: 20, color: Colors.white70),
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
