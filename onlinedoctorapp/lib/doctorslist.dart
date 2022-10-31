// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DoctorList extends StatefulWidget {
  const DoctorList({super.key});

  @override
  State<DoctorList> createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              ListTile(
                leading: IconButton(
                  onPressed: (() {
                    Navigator.of(context).pop();
                  }),
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 25,
                  ),
                  color: Colors.black,
                ),
                title: Text(
                  "Doctors",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                    onPressed: (() {}),
                    icon: Icon(
                      Icons.search,
                      size: 35,
                    )),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.blue),
                margin: EdgeInsets.all(15),
                height: 60,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 7,
                      ),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        height: 50,
                        minWidth: 180,
                        color: Colors.white,
                        onPressed: (() {}),
                        child: Text(
                          "Online",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: TextButton(
                          onPressed: (() {}),
                          child: Text(
                            "Visit",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
