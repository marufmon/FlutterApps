// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomDemo extends StatelessWidget {
  const CustomDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: const Text("Maruf"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      const BoxShadow(offset: Offset(0, 30), blurRadius: 30)
                    ],
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 166, 180, 177),
                  ),
                  height: 50,
                  width: 150,
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 110,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 64, 124, 255),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(95),
                                bottomLeft: Radius.circular(95),
                                bottomRight: Radius.circular(200))),
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            "facebook",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.facebook,
                        size: 30,
                        color: Color.fromARGB(255, 14, 109, 192),
                      )
                    ],
                  )),
              SizedBox(
                height: 25,
              ),
              Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      const BoxShadow(offset: Offset(0, 30), blurRadius: 28)
                    ],
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 153, 167, 163),
                  ),
                  height: 50,
                  width: 150,
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 110,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 22, 190, 16),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(95),
                                bottomLeft: Radius.circular(95),
                                topRight: Radius.circular(200))),
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            "whatsApp",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.whatsapp,
                        size: 30,
                        color: Color.fromARGB(255, 6, 165, 14),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
