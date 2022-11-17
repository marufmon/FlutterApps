// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapp/customhttp/customhttp.dart';
import 'package:newsapp/model/newsdata.dart';
import 'package:newsapp/weiget/const.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageNo = 1;
  String sortBy = 'popularity';
  @override
  Widget build(BuildContext context) {
    return AsyncSnapshot.nothing() == ConnectionState.waiting
        ? CircularProgressIndicator()
        : Scaffold(
            appBar: AppBar(
              title: Text(
                ' Daily News ',
                style: GoogleFonts.roboto(
                    fontSize: 25,
                    color: Colors.black87,
                    fontWeight: FontWeight.w800),
              ),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Expanded(
                      child: FutureBuilder<List<Articles>>(
                        future: CustomUrl().fetchAllNewsData(
                            sortBy: sortBy, pageNo: pageNo.toString()),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return Center(
                                child: Image.network(
                                    'https://t3.ftcdn.net/jpg/04/32/96/66/360_F_432966637_k3IxbtJO6MIO1ld9skwaLet0F5OMAMbk.jpg'));
                          } else if (snapshot.hasError) {
                            return Text(
                              'Something Error',
                              style: GoogleFonts.roboto(),
                            );
                          } else if (snapshot.data == null) {
                            return Text(
                              'Data is null',
                              style: GoogleFonts.roboto(),
                            );
                          }
                          return ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) => Card(
                                    child: GestureDetector(
                                      onTap: () => ListTile(
                                        leading: Image.network(
                                          snapshot.data![index].urlToImage
                                              .toString(),
                                        ),
                                        title: Text(
                                            snapshot.data![index].title
                                                .toString(),
                                            style: myStyle(18, Colors.black),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis),
                                        subtitle: Text(
                                            snapshot.data![index].description
                                                .toString(),
                                            textAlign: TextAlign.left,
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: myStyle(12, Colors.black,
                                                FontWeight.w400)),
                                      ),
                                    ),
                                  ),
                              separatorBuilder: (context, index) =>
                                  SizedBox(height: 20),
                              itemCount: snapshot.data!.length);
                        },
                      ),
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              if (pageNo > 1) {
                                pageNo--;
                                setState(() {});
                              }
                            },
                            child: Text(
                              'Pre',
                              style: GoogleFonts.roboto(),
                            )),
                        Flexible(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: List.generate(
                              5,
                              (index) => GestureDetector(
                                  onTap: () {
                                    pageNo = (index + 1);
                                    setState(() {});
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: index == pageNo - 1
                                              ? Colors.red
                                              : Colors.blue,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Text(
                                      (index + 1).toString(),
                                      style: GoogleFonts.nunito(
                                        fontSize: index == pageNo - 1 ? 20 : 12,
                                        color: index == pageNo - 1
                                            ? Colors.red
                                            : Colors.black,
                                      ),
                                    ),
                                  ))),
                        )),
                        ElevatedButton(
                            onPressed: () {
                              if (pageNo < 5) {
                                pageNo++;
                                setState(() {});
                              }
                            },
                            child: Text(
                              'NEXT',
                              style: GoogleFonts.roboto(),
                            )),
                      ],
                    )
                  ],
                )),
          );
  }
}
