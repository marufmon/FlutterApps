import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 620,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/278886388_1359446047812017_6942170972080766172_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=174925&_nc_eui2=AeFy98t68KoAwWAqnehEox1wVpJdGp_q8QZWkl0an-rxBpNcpQn-Keo738G2KnRYPi9KB_zbM1NitPH7a1-DbFTI&_nc_ohc=NaN1hwaFH_cAX-Akj_U&tn=UM-58rhrSTnNpEwR&_nc_ht=scontent.fdac31-1.fna&oh=00_AT8txC2pcRERz5ClHGAtK9-RWdtXqpmcWaDLa6d8uHx59Q&oe=63548DB5"),
                    fit: BoxFit.cover)),
          )
        ],
      ),
    );
  }
}
