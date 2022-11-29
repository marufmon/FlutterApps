// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularityPage extends StatefulWidget {
  const PopularityPage({super.key});

  @override
  State<PopularityPage> createState() => _PopularityPageState();
}

class _PopularityPageState extends State<PopularityPage> {
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('blog').snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
        stream: _usersStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
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
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                height: 345,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          child: Text(
                            data['title'][0],
                            style: GoogleFonts.roboto(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          data['title'],
                          style: GoogleFonts.roboto(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                            onPressed: (() {}),
                            icon: Icon(
                              Icons.more_horiz,
                              size: 25,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.network(
                        data['img'],
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      data['description'],
                      style: GoogleFonts.roboto(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
