// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_constructors_in_immutables
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fitnessapi_app/details_page.dart';
import 'package:fitnessapi_app/model/datalist.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class SecondPage extends StatefulWidget {
  SecondPage({Key? key, this.exerciseModel}) : super(key: key);
  final ExerciseModel? exerciseModel;
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int seconds = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CachedNetworkImage(
            width: double.infinity,
            fit: BoxFit.cover,
            height: double.infinity,
            imageUrl: "${widget.exerciseModel!.thumbnil}",
            placeholder: (context, url) => Image.network(
                "https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/288020853_1394142407675714_3692136361548968487_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=174925&_nc_eui2=AeFgtWCvRQKtLXDpShSFKcwVV9Zi_wMRwmlX1mL_AxHCace06YQgg0E1zm7r4gNDmxdW6zIC0v4cAEYWKA6kSWYr&_nc_ohc=-5opNCygNGgAX8YLe_U&_nc_ht=scontent.fdac31-1.fna&oh=00_AfBmmP_3kNcYwrNVLF0eqq02GnCM5xf7Wdi4dFEbglKtyw&oe=63780AE9"),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          Positioned(
              bottom: 20,
              left: 20,
              right: 25,
              child: SleekCircularSlider(
                min: 3,
                max: 20,
                initialValue: seconds.toDouble(),
                onChange: (double value) {
                  setState(() {
                    seconds = value.toInt();
                  });
                },
                innerWidget: (double value) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "$seconds",
                        style: GoogleFonts.roboto(
                            fontSize: 20, color: Colors.purple),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ThirdPage(
                                    exerciesModel: widget.exerciseModel,
                                    second: seconds,
                                  )));
                        },
                        child: Text(
                          "START",
                          style: GoogleFonts.roboto(fontSize: 16),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.tealAccent),
                      )
                    ],
                  );
                },
              ))
        ],
      ),
    );
  }
}
