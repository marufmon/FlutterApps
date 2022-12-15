// ignore_for_file: unused_import, prefer_const_constructors, non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:jiffy/jiffy.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, dynamic>? weatherMap;
  Map<String, dynamic>? forecastMap;
  fetchWeatherData() async {
    String WeatherLink =
        "https://api.openweathermap.org/data/2.5/weather?lat=23.790552&lon=90.391769&units=metric&appid=f92bf340ade13c087f6334ed434f9761&fbclid=IwAR3NE9j-h4-TqaY8D2big77L7opRNQUV4jHgENyrdGSIJv2jEQo88A6jt2Y";
    String ForeCastLink =
        "https://api.openweathermap.org/data/2.5/forecast?lat=23.790552&lon=90.391769&units=metric&appid=f92bf340ade13c087f6334ed434f9761&fbclid=IwAR3NE9j-h4-TqaY8D2big77L7opRNQUV4jHgENyrdGSIJv2jEQo88A6jt2Y";

    var weatherResponse = await http.get(Uri.parse(WeatherLink));
    var forecastResponse = await http.get(Uri.parse(ForeCastLink));
    weatherMap = Map<String, dynamic>.from(jsonDecode(weatherResponse.body));
    forecastMap = Map<String, dynamic>.from(jsonDecode(forecastResponse.body));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text("${weatherMap!["name"]}",
                      style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Center(
              child: Column(
                children: [
                  Text("${weatherMap!["main"]["temp"]}°",
                      style: GoogleFonts.roboto(
                          fontSize: 55,
                          fontWeight: FontWeight.w600,
                          color: Colors.black)),
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Feels Like ${weatherMap!["main"]["feels_like"]}°",
                      style: GoogleFonts.roboto(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.black)),
                  Text("${weatherMap!["weather"][0]["description"]}",
                      style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black))
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                      "Humidity ${weatherMap!["main"]["humidity"]},Pressure ${weatherMap!["main"]["pressure"]}",
                      style: GoogleFonts.roboto(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.black)),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                      "Sunrise- ${Jiffy(DateTime.fromMicrosecondsSinceEpoch(weatherMap!["sys"]["sunrise"])).format("h:mm,a")},Sunset- ${Jiffy(DateTime.fromMicrosecondsSinceEpoch(weatherMap!["sys"]["sunset"])).format("h:mm,a")}",
                      style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                ],
              ),
            ),
            SizedBox(
              height: 240,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (contex, index) => Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 149, 171, 189),
                        ),
                        height: 200,
                        width: 160,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                  "${Jiffy(forecastMap!["list"][index]["dt_txt"]).format("EEE  h:mm")}",
                                  style: GoogleFonts.roboto(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)),
                              Image.network(
                                  "https://openweatherMap.org/img/wn/${forecastMap!["list"][index]["weather"][0]["icon"]}@2x.png"),
                              Text(
                                  "${forecastMap!["list"][index]["main"]["temp_min"]}°/${forecastMap!["list"][index]["main"]["temp_max"]}°",
                                  style: GoogleFonts.roboto(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black)),
                              Text(
                                  "${forecastMap!["list"][index]["weather"][0]["description"]}",
                                  style: GoogleFonts.roboto(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)),
                            ],
                          ),
                        ),
                      ),
                  separatorBuilder: (_, index) => SizedBox(
                        width: 10,
                      ),
                  itemCount: forecastMap!.length),
            )
          ],
        ),
      ),
    );
  }
}
