// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiffy/jiffy.dart';
import 'package:news_app/httpmodel/httpmodel.dart';
import 'package:news_app/model/newsappdata.dart';
import 'package:news_app/weiget/const.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageNo = 1;
  String sortBy = "popularity";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: (() {}),
              icon: Icon(
                Icons.search,
                size: 25,
                color: Colors.grey,
              ))
        ],
        centerTitle: true,
        title: Text(
          "News App",
          style: myStyle(20, Colors.blueGrey),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
                height: 80,
                color: Colors.tealAccent,
                child: Row(
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text("yyy"))
                  ],
                )),
            Container(
              height: 80,
            ),
            FutureBuilder<List<Articles>>(
              future:
                  HttpModel().fetchAllNewsData(pageNo: pageNo, sortBy: sortBy),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.hasError) {
                  return Text("Something error");
                } else if (snapshot.data == null) {
                  return Text("No Data Found");
                }
                return ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Image.network(
                            "${snapshot.data![index].urlToImage}"),
                        title: Text("${snapshot.data![index].title}"),
                        subtitle: Text("${snapshot.data![index].description}"),
                      );
                    });
              },
            )
          ],
        ),
      ),
    );
  }
}
