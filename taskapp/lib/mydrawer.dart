// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: FractionalOffset.topLeft,
                      end: FractionalOffset.bottomRight,
                      colors: [
                        Color(0xFF10AB83),
                        Color(0xFF10AB83),
                      ],
                      stops: [
                        1,
                        1,
                      ]),
                  color: Colors.cyanAccent,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.only(top: 30),
                      child: IconButton(
                          onPressed: (() {
                            Navigator.of(context).pop();
                          }),
                          icon: Icon(
                            Icons.close,
                            size: 25,
                            color: Colors.white,
                          ))),
                  Container(
                    padding: EdgeInsets.only(left: 20, top: 20),
                    child: Text(
                      "Demo Company LTD",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.only(top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ExpansionTile(
                    leading: IconButton(
                        onPressed: (() {}),
                        icon: Icon(
                          Icons.shopping_cart_checkout,
                          size: 25,
                          color: Colors.green,
                        )),
                    title: Text(
                      'Purcheses',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Purchese List",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Purchese List",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Order List",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "VAT List",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Product Unit",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Purchese Report",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan),
                          )
                        ],
                      )
                    ],
                  ),
                  ExpansionTile(
                    leading: IconButton(
                        onPressed: (() {}),
                        icon: Icon(
                          Icons.shopping_bag,
                          size: 25,
                          color: Colors.black,
                        )),
                    title: Text(
                      'Sell',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Purchese List",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Purchese List",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Order List",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "VAT List",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Product Unit",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Purchese Report",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan),
                          )
                        ],
                      )
                    ],
                  ),
                  ExpansionTile(
                    leading: IconButton(
                        onPressed: (() {}),
                        icon: Icon(
                          Icons.inventory,
                          size: 25,
                          color: Colors.black,
                        )),
                    title: Text(
                      'Stack',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Purchese List",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Purchese List",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Order List",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "VAT List",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Product Unit",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Purchese Report",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
