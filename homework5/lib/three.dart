// ignore_for_file: unused_field, prefer_final_fields, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Three extends StatefulWidget {
  const Three({super.key});

  @override
  State<Three> createState() => _ThreeState();
}

class _ThreeState extends State<Three> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/222625098_1186338661789424_3095712775347815896_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=174925&_nc_eui2=AeHihOqJwTVyz2xEmc8g8m5uOjTE3Foe-us6NMTcWh7668LBGVRJgLb81jSgS_eAjWXt3YWlgbMm68mps5JfQtYG&_nc_ohc=q8Oi31swZMkAX89vRff&tn=UM-58rhrSTnNpEwR&_nc_ht=scontent.fdac31-1.fna&oh=00_AT9ipaKALYeDmbSPIW5S1nfR83bnfmh0UG9BbbhJpEG-SA&oe=6355FB39"),
                  fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: (() {
                    Navigator.of(context).pop();
                  }),
                  icon: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.black,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
