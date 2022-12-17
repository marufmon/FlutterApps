// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jiffy/jiffy.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String weatherLink =
      "https://api.openweathermap.org/data/2.5/weather?lat=23.71&lon=90.40&units=metric&appid=f92bf340ade13c087f6334ed434f9761&fbclid=IwAR3Qbmh63CbAq5t3ef1nT6nqLO-SoTtn-IeSJWS5EfIXCdevRlAeMBz1Mz4";

  String forecastLink =
      "https://api.openweathermap.org/data/2.5/forecast?lat=23.71&lon=90.40&units=metric&appid=f92bf340ade13c087f6334ed434f9761&fbclid=IwAR3Qbmh63CbAq5t3ef1nT6nqLO-SoTtn-IeSJWS5EfIXCdevRlAeMBz1Mz4";
  Map<String, dynamic>? weathermap;
  Map<String, dynamic>? secondmap;

  getData() async {
    var getdataformap = await http.get(Uri.parse(weatherLink));
    var getresponse = await http.get(Uri.parse(forecastLink));
    print(getdataformap.body);

    setState(() {
      weathermap = Map<String, dynamic>.from(jsonDecode(getdataformap.body));
      secondmap = Map<String, dynamic>.from(jsonDecode(getresponse.body));
    });
  }

  @override
  void initState() {
    getData();

    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.grey,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  "${weathermap!['name']}",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                Jiffy(DateTime.now()).format("MMM do yy, h:mm a"),
                style: myStyle(Colors.white, 12),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                child: Image.network(
                  "https://cdn-icons-png.flaticon.com/512/1163/1163661.png",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "${weathermap!['weather'][0]['description']}",
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "${weathermap!['main']['temp']} °",
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
              Spacer(),
              Column(
                children: [
                  Text(
                    "🌡 Feels like ${secondmap!['list'][0]['main']['feels_like']}",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    " Humidity : ${secondmap!['list'][0]['main']['humidity']} Pressure : ${secondmap!['list'][0]['main']['pressure']}",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  Text(
                    " 🌞 Sunrise : ${Jiffy(DateTime.fromMillisecondsSinceEpoch(weathermap!['sys']['sunrise'] * 1000)).format("h:mm a")} 🌚 sunset : ${Jiffy(DateTime.fromMillisecondsSinceEpoch(weathermap!['sys']['sunset'] * 1000)).format("h:mm a")}",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
              Spacer(),
              Container(
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                height: MediaQuery.of(context).size.height * 0.22,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: forecastLink.length,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          height: MediaQuery.of(context).size.height * .15,
                          width: MediaQuery.of(context).size.width * .3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: index % 2 == 0
                                  ? Colors.tealAccent
                                  : Colors.blue.shade200),
                          child: Column(
                            children: [
                              Text(
                                Jiffy(DateTime.now()).format(" EEE, h:mm "),
                                style: myStyle(Colors.white, 12),
                              ),
                              Container(
                                height: 50,
                                child: index % 2 == 0
                                    ? Image.network(
                                        'https://cdn-icons-png.flaticon.com/512/3222/3222800.png',
                                        fit: BoxFit.cover,
                                      )
                                    : Image.network(
                                        'https://cdn-icons-png.flaticon.com/512/4834/4834677.png',
                                        fit: BoxFit.cover,
                                      ),
                              ),
                              Spacer(),
                              Text(
                                "${secondmap!["list"][index]["weather"][0]["description"]}",
                                style: myStyle(Colors.white, 12.0),
                              ),
                            ],
                          ),
                        ),
                      );
                    })),
              ),
            ],
          ),
        ),
      ),
    );
  }

  myStyle(Color clr, double size, [FontWeight? fw]) {
    return TextStyle(color: clr, fontSize: size, fontWeight: fw);
  }
}
