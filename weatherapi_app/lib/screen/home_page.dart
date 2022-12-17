// ignore_for_file: unused_element, prefer_typing_uninitialized_variables, prefer_const_constructors, unused_local_variable, non_constant_identifier_names, unnecessary_string_interpolations, prefer_const_literals_to_create_immutables

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
  Position? position;

  determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    position = await Geolocator.getCurrentPosition();

    setState(() {
      lat = position!.latitude;
      long = position!.longitude;
    });
    fetchWeatherData();
  }

  var lat;
  var long;
  Map<String, dynamic>? weatherMap;
  Map<String, dynamic>? forecastMap;
  fetchWeatherData() async {
    String WeatherLink =
        "https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$long&units=metric&appid=f92bf340ade13c087f6334ed434f9761&fbclid=IwAR0ZtDaO1_oKaGKrUmqXsfJMOZh3R9ePbLtKP--lTbMo_4642bL4PYSXJJo";
    String ForeCastLink =
        "https://api.openweathermap.org/data/2.5/forecast?lat=$lat&lon=$long&units=metric&appid=f92bf340ade13c087f6334ed434f9761&fbclid=IwAR0ZtDaO1_oKaGKrUmqXsfJMOZh3R9ePbLtKP--lTbMo_4642bL4PYSXJJo";

    var weatherResponse = await http.get(Uri.parse(WeatherLink));
    var forecastResponse = await http.get(Uri.parse(ForeCastLink));
    weatherMap = Map<String, dynamic>.from(jsonDecode(weatherResponse.body));
    forecastMap = Map<String, dynamic>.from(jsonDecode(forecastResponse.body));
    setState(() {});
  }

  @override
  void initState() {
    determinePosition();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: weatherMap == null
            ? Center(child: CircularProgressIndicator())
            : Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Column(
                        children: [
                          Text(
                            "${Jiffy(DateTime.now()).format("MMM do yy,h:mm,a")}",
                            style: GoogleFonts.roboto(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Text("${weatherMap!["name"]}",
                              style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: Center(
                        child: Image.network(
                          "https://cdn-icons-png.flaticon.com/512/1163/1163661.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Column(
                        children: [
                          Text("${weatherMap!["main"]["temp"]}°",
                              style: GoogleFonts.roboto(
                                  fontSize: 55,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "Feels Like ${weatherMap!["main"]["feels_like"]}°",
                              style: GoogleFonts.roboto(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white)),
                          Text("${weatherMap!["weather"][0]["description"]}",
                              style: GoogleFonts.roboto(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
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
                                  color: Colors.white)),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              "Sunrise- ${Jiffy(DateTime.fromMicrosecondsSinceEpoch(weatherMap!["sys"]["sunrise"])).format("h:mm,a")},Sunset- ${Jiffy(DateTime.fromMicrosecondsSinceEpoch(weatherMap!["sys"]["sunset"])).format("h:mm,a")}",
                              style: GoogleFonts.roboto(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (contex, index) => Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: index % 2 == 0
                                        ? Colors.tealAccent
                                        : Colors.blue.shade200),
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
                                              color: Colors.white)),
                                      Image.network(
                                          "https://openweatherMap.org/img/wn/${forecastMap!["list"][index]["weather"][0]["icon"]}@2x.png"),
                                      Text(
                                          "${forecastMap!["list"][index]["main"]["temp_min"]}°/${forecastMap!["list"][index]["main"]["temp_max"]}°",
                                          style: GoogleFonts.roboto(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white)),
                                      Text(
                                          "${forecastMap!["list"][index]["weather"][0]["description"]}",
                                          style: GoogleFonts.roboto(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white)),
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
      ),
    );
  }
}
