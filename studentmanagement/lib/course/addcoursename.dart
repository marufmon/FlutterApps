// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studentmanagement/course/viewcoursename.dart';

class AddCourseName extends StatefulWidget {
  const AddCourseName({super.key});

  @override
  State<AddCourseName> createState() => _AddCourseNameState();
}

class _AddCourseNameState extends State<AddCourseName> {
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('courses').snapshots();

  deleteData(selectedData) {
    return FirebaseFirestore.instance
        .collection('courses')
        .doc(selectedData)
        .delete()
        .then((value) => print('Data is deleted'));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) => ViewCourseName());
            },
            child: Icon(
              Icons.add,
              size: 30,
            ),
          ),
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              "Add Course Name",
              style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          body: StreamBuilder<QuerySnapshot>(
            stream: _usersStream,
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasError) {
                return Text('Something error');
              }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }

              return ListView(
                children: snapshot.data!.docs.map((DocumentSnapshot document) {
                  Map<String, dynamic> data =
                      document.data()! as Map<String, dynamic>;
                  return Container(
                    height: 270,
                    width: double.infinity,
                    child: Card(
                      elevation: 7,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network(
                                data['img'],
                                height: MediaQuery.of(context).size.height,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                              child: Container(
                            child: Row(
                              children: [
                                MaterialButton(
                                  height: 45,
                                  minWidth: 80,
                                  onPressed: (() {}),
                                  child: Icon(
                                    Icons.edit,
                                    size: 25,
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                MaterialButton(
                                  height: 45,
                                  minWidth: 80,
                                  onPressed: (() {
                                    deleteData(document.id);
                                  }),
                                  child: Icon(
                                    Icons.delete,
                                    size: 25,
                                    color: Colors.redAccent,
                                  ),
                                ),
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                  );
                }).toList(),
              );
            },
          )),
    );
  }
}
