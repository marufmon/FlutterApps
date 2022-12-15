// ignore_for_file: unused_import

import 'package:e_commerce_app/provider/categoriesprovider.dart';
import 'package:e_commerce_app/screens/additemlist.dart';
import 'package:e_commerce_app/screens/addproduct.dart';
import 'package:e_commerce_app/widget/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  void initState() {
    // TODO: implement initState

    Provider.of<CategoriesProvider>(context, listen: false).getCategoryData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final categoriesList =
        Provider.of<CategoriesProvider>(context).categoryList;
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => AddItem()))
                .then((value) =>
                    Provider.of<CategoriesProvider>(context, listen: false)
                        .getCategoryData());
          },
          child: Icon(
            Icons.add,
            size: 25,
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Categories",
            style: GoogleFonts.roboto(fontSize: 20, letterSpacing: 2),
          ),
        ),
        body: categoriesList.isEmpty
            ? spinkit
            : SingleChildScrollView(
                child: Column(
                  children: [
                    GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: categoriesList.length,
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 2),
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.only(top: 5, left: 5, right: 5),
                            height: 100,
                            child: Card(
                              elevation: 15,
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            colors: [
                                          Colors.black12,
                                          Colors.black,
                                          Colors.black38
                                        ],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter)),
                                    height: double.infinity,
                                    child: Image.network(
                                      "${imageUrl}${categoriesList[index].image}",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 5,
                                    child: Container(
                                      padding: EdgeInsets.all(5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            categoriesList[index]
                                                .name
                                                .toString(),
                                            style: GoogleFonts.roboto(
                                                fontSize: 14,
                                                letterSpacing: 2,
                                                color: Colors.white),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            categoriesList[index].id.toString(),
                                            style: GoogleFonts.roboto(
                                                fontSize: 14,
                                                letterSpacing: 2,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        })
                  ],
                ),
              ),
      ),
    );
  }
}
