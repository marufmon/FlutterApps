// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: const Text("Maruf"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              TextButton(
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      side: const BorderSide(width: 2, color: Colors.black12)),
                  onPressed: (() {}),
                  child: Container(
                    child: const Text("Save"),
                  )),
              TextButton.icon(
                  onPressed: (() {}),
                  icon: const Icon(
                    Icons.add_a_photo,
                    size: 25,
                  ),
                  label: const Text("Add")),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.cyan, backgroundColor: Colors.teal),
                onPressed: (() {}),
                child: Column(
                  children: [
                    const Icon(
                      Icons.delete,
                      size: 30,
                      color: Colors.red,
                    ),
                    const Text("Delete"),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton.icon(
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.lightBlue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      side: const BorderSide(width: 2, color: Colors.black12)),
                  onPressed: (() {}),
                  icon: Icon(
                    Icons.whatsapp,
                    size: 30,
                    color: Color.fromARGB(255, 4, 156, 9),
                  ),
                  label: Text("WhatsApp")),
              SizedBox(
                height: 10,
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
