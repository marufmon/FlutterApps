// ignore_for_file: prefer_const_constructors, unused_local_variable
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resisterfirebase/blog/popularity.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('blog').snapshots();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
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
              height: 270,
              child: Card(
                elevation: 7,
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
                              data["img"],
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
                              padding:
                                  EdgeInsets.only(top: 10, left: 20, right: 10),
                              child: Text(
                                data["title"],
                                style: GoogleFonts.lobster(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              padding:
                                  EdgeInsets.only(top: 10, left: 20, right: 10),
                              child: Text(
                                data["description"],
                                style: GoogleFonts.roboto(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: MaterialButton(
                                color: Colors.amber,
                                height: 40,
                                minWidth: 80,
                                onPressed: (() {
                                  customDialog(data['img'], data['title'],
                                      data['description']);
                                }),
                                child: Text(
                                  "Veiw details",
                                  style: GoogleFonts.roboto(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
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

  customDialog(String img, String title, String description) {
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Container(
              height: 200,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                        img,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        title,
                        style: GoogleFonts.roboto(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        description,
                        style: GoogleFonts.roboto(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
