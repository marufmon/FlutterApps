// ignore_for_file: prefer_const_constructors

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class NewStudent extends StatefulWidget {
  const NewStudent({super.key});

  @override
  State<NewStudent> createState() => _NewStudentState();
}

class _NewStudentState extends State<NewStudent> {
  final nameController = TextEditingController();
  final phineController = TextEditingController();
  final addressController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  String? gender;
  String? dob;
  String? images;
  ImageSource _imageSource = ImageSource.camera;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 241, 247, 170),
        centerTitle: true,
        title: Text(
          "Student",
          style: TextStyle(
              letterSpacing: 3.0,
              color: Color.fromARGB(255, 21, 1, 34),
              fontWeight: FontWeight.w800,
              fontSize: 25),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Form(
            child: ListView(
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                prefixIcon: Icon(Icons.person),
                labelText: "Name",
                labelStyle: TextStyle(
                    color: Color.fromARGB(255, 21, 1, 34),
                    fontWeight: FontWeight.w800,
                    fontSize: 15),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Name can't be Empty";
                }
                if (value.length > 20) {
                  return "Name can be 20";
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(30))),
                prefixIcon: Icon(Icons.phone),
                labelText: "Phone",
                labelStyle: TextStyle(
                    color: Color.fromARGB(255, 21, 1, 34),
                    fontWeight: FontWeight.w800,
                    fontSize: 15),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Phone can't be Empty";
                }
                if (value.length > 20) {
                  return "Phone can be 20";
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: addressController,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                prefixIcon: Icon(Icons.home_filled),
                labelText: "Address",
                labelStyle: TextStyle(
                    color: Color.fromARGB(255, 21, 1, 34),
                    fontWeight: FontWeight.w800,
                    fontSize: 15),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Address can't be Empty";
                }
                if (value.length > 20) {
                  return "Address can be 20";
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: 15,
            ),
            Card(
              child: Row(
                children: [
                  TextButton(
                      onPressed: () {
                        _selectedDate();
                      },
                      child: Text(
                        "Select your date of Birth",
                        style: TextStyle(
                            color: Color.fromARGB(255, 6, 89, 245),
                            fontWeight: FontWeight.w800,
                            fontSize: 15),
                      )),
                  Text(
                    dob == null ? "No Birth day selected" : dob!,
                    style: TextStyle(
                        color: Color.fromARGB(255, 21, 1, 34),
                        fontWeight: FontWeight.w800,
                        fontSize: 15),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Card(
              child: Row(
                children: [
                  Radio<String>(
                      value: "Male",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value;
                        });
                      }),
                  Text(
                    "Male",
                    style: TextStyle(
                        color: Color.fromARGB(255, 223, 4, 124),
                        fontWeight: FontWeight.w800,
                        fontSize: 20),
                  ),
                  Radio<String>(
                      value: "Female",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value;
                        });
                      }),
                  Text(
                    "Female",
                    style: TextStyle(
                        color: Color.fromARGB(255, 223, 4, 124),
                        fontWeight: FontWeight.w800,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Card(
                    child: images == null
                        ? Image.network(
                            "https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/288020853_1394142407675714_3692136361548968487_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=174925&_nc_eui2=AeFgtWCvRQKtLXDpShSFKcwVV9Zi_wMRwmlX1mL_AxHCace06YQgg0E1zm7r4gNDmxdW6zIC0v4cAEYWKA6kSWYr&_nc_ohc=1DvzduHI3C8AX-hEqQ6&_nc_ht=scontent.fdac31-1.fna&oh=00_AfDZF2sezEKa3CiuSoObkHRW8eZfFU1Cr_F1JdSkWX1O9g&oe=63721C29",
                            height: 200,
                            width: 220,
                            fit: BoxFit.cover,
                          )
                        : Image.file(
                            File(images!),
                            height: 200,
                            width: 200,
                            fit: BoxFit.cover,
                          )),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          _imageSource = ImageSource.camera;
                          _getImage();
                        },
                        child: Text(
                          "Camera",
                          style: TextStyle(
                              color: Color.fromARGB(255, 241, 238, 4),
                              fontWeight: FontWeight.w800,
                              fontSize: 20),
                        )),
                    ElevatedButton(
                        onPressed: () {
                          _imageSource = ImageSource.gallery;
                          _getImage();
                        },
                        child: Text(
                          "Gallery",
                          style: TextStyle(
                              color: Color.fromARGB(255, 247, 222, 4),
                              fontWeight: FontWeight.w800,
                              fontSize: 20),
                        )),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Save all data",
                      style: TextStyle(
                          color: Color.fromARGB(255, 8, 8, 8),
                          fontWeight: FontWeight.w800,
                          fontSize: 20),
                    )),
              ],
            ),
          ],
        )),
      ),
    );
  }

  void _selectedDate() async {
    final selectedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        lastDate: DateTime.now());
    if (selectedDate != null) {
      setState(() {
        dob = DateFormat("dd/MM/yyyy").format(selectedDate);
      });
    }
  }

  void _getImage() async {
    final selectedImage = await ImagePicker().pickImage(source: _imageSource);
    if (selectedImage != null) {
      setState(() {
        images = selectedImage.path;
      });
    }
  }
}
