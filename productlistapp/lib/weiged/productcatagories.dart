// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class ProductCatagories extends StatefulWidget {
  const ProductCatagories({super.key});

  @override
  State<ProductCatagories> createState() => _ProductCatagoriesState();
}

class _ProductCatagoriesState extends State<ProductCatagories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Categories",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          Text(
            "See all",
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
