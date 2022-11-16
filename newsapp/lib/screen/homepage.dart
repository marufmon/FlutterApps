// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:newsapp/customhttp/customhttp.dart';
import 'package:newsapp/model/newsdata.dart';
import 'package:newsapp/weiget/const.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageNo = 1;
  String sortBy = "popularity";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          )
        ],
        backgroundColor: Colors.white,
        title: Text(
          "NewsApp",
          style: myStyle(20, Colors.blueGrey),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: 80,
                  color: Colors.red,
                  child: Row(
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text("yyy"))
                    ],
                  )),
              Container(
                height: 80,
              ),
              FutureBuilder<List<Articles>>(
                future: HttpModel()
                    .fetchAllNewsData(pageNo: pageNo, sortBy: sortBy),
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
                          subtitle:
                              Text("${snapshot.data![index].description}"),
                        );
                      });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
