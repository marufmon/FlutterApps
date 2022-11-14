// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, sort_child_properties_last

import 'package:cached_network_image/cached_network_image.dart';
import 'package:fitnessapi_app/gifpage.dart';
import 'package:fitnessapi_app/model/datalist.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class ThumbnailPage extends StatefulWidget {
  ThumbnailPage({super.key, required this.exerciseModel});

  final ExerciseModel exerciseModel;

  @override
  State<ThumbnailPage> createState() => _ThumbnailPageState();
}

class _ThumbnailPageState extends State<ThumbnailPage> {
  int seconds = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            CachedNetworkImage(
                width: double.infinity,
                fit: BoxFit.cover,
                height: double.infinity,
                imageUrl: "${widget.exerciseModel.thumbnail}",
                placeholder: (context, url) => Image.network(
                    "https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/298267792_1432047977218490_2040140291139212763_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEk6TV8008OTBxZqqiZLrqXvZHW9p1MI469kdb2nUwjjloubnKBuuBy_QJ1KJzVkGmudMbJD7KXR61cRDWdKdzu&_nc_ohc=DC2BkGNBDosAX8DOuc9&_nc_ht=scontent.fdac31-1.fna&oh=00_AfBy3FmNdIdQeu37kxjQKjvoWHyL7zbwMBs8Vn5b6WBqFw&oe=6377F3C6"),
                errorWidget: (context, url, error) => Icon(Icons.error)),
            Positioned(
                bottom: 20,
                left: 20,
                right: 20,
                child: SleekCircularSlider(
                  min: 0,
                  max: 30,
                  initialValue: seconds.toDouble(),
                  onChange: (double value) {
                    setState(() {
                      seconds = value.toInt();
                    });
                  },
                  innerWidget: (double value) {
                    return Center(
                        child: Column(
                      children: [
                        SizedBox(
                          height: 55,
                        ),
                        Text(
                          '$seconds',
                          style: GoogleFonts.roboto(
                              fontSize: 35, color: Colors.cyan),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => GifPage(
                                      exerciseModel: widget.exerciseModel,
                                      seconds: seconds,
                                    )));
                          },
                          child: Text(
                            "START",
                            style: GoogleFonts.roboto(fontSize: 16),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent),
                        )
                      ],
                    ));
                  },
                ))
          ],
        ),
      ),
    );
  }
}
