// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('users').snapshots();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _usersStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }

        return ListView(
          children: snapshot.data!.docs.map((DocumentSnapshot document) {
            Map<String, dynamic> data =
                document.data()! as Map<String, dynamic>;
            return Container(
              height: 350,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.network(
                              data['img'],
                              height: MediaQuery.of(context).size.height,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(data['title']),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              child: Text(data['description']),
                            ),
                            MaterialButton(
                              color: Colors.amber,
                              height: 55,
                              minWidth: 180,
                              onPressed: (() {}),
                              child: Text("Start"),
                            )
                          ],
                        ))
                  ],
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
