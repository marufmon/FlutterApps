// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fitnessapi_app/model/datalist.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage(
      {Key? key, this.exerciesModel, this.second, ExerciseModel? exerciseModel})
      : super(key: key);
  final ExerciseModel? exerciesModel;
  final int? second;

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  late Timer timer;
  int startCount = 0;

  @override
  void initState() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (timer.tick == widget.second) {
        timer.cancel();
        Future.delayed(Duration(seconds: 2), () {
          Navigator.of(context).pop();
        });
      }
      setState(() {
        startCount = timer.tick;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CachedNetworkImage(
            width: double.infinity,
            height: double.infinity,
            imageUrl: "${widget.exerciesModel!.gif}",
            placeholder: (context, url) => Image.network(
                "https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/288020853_1394142407675714_3692136361548968487_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=174925&_nc_eui2=AeFgtWCvRQKtLXDpShSFKcwVV9Zi_wMRwmlX1mL_AxHCace06YQgg0E1zm7r4gNDmxdW6zIC0v4cAEYWKA6kSWYr&_nc_ohc=-5opNCygNGgAX8YLe_U&_nc_ht=scontent.fdac31-1.fna&oh=00_AfBmmP_3kNcYwrNVLF0eqq02GnCM5xf7Wdi4dFEbglKtyw&oe=63780AE9"),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          Positioned(
            top: 20,
            right: 20,
            left: 20,
            child: Center(child: Text("${startCount}")),
          )
        ],
      ),
    );
  }
}
