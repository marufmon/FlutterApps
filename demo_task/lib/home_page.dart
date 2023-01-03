// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, no_leading_underscores_for_local_identifiers
import 'package:demo_task/tabledemo.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _mykey = GlobalKey();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              _mykey.currentState!.openDrawer();
            },
            child: Container(
                width: 18,
                height: 14,
                child: Image.asset(
                  "images/menu.png",
                )),
          ),
          backgroundColor: Color(0xff10AB83),
          elevation: 0,
          title: Text(
            "Table Data",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600, fontFamily: "Inter"),
          ),
          centerTitle: true,
        ),
        key: _mykey,
        drawerScrimColor: Color(0xff10AB83).withOpacity(0.5),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Stack(children: [
                  Container(
                    padding: const EdgeInsets.all(6),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xff10AB83),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(16),
                            bottomLeft: Radius.circular(16))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: (() {
                              _mykey.currentState!.closeDrawer();
                            }),
                            icon: Icon(
                              Icons.close,
                              size: 30,
                              color: Colors.white,
                            )),
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 30),
                          child: Text(
                            "Demo Limited Company",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Poppins"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: -180,
                    top: -140,
                    child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(120)),
                          gradient: LinearGradient(colors: [
                            Color(0xffC9ECE3).withOpacity(0.15),
                            Color(0xff10AB83).withOpacity(0.15)
                          ])),
                    ),
                  ),
                  Positioned(
                    right: -220,
                    top: -140,
                    child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(120)),
                          gradient: LinearGradient(colors: [
                            Color(0xffC9ECE3).withOpacity(0.15),
                            Color(0xff10AB83).withOpacity(0.15)
                          ])),
                    ),
                  )
                ]),
              ),
              Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ExpansionTile(
                          childrenPadding: EdgeInsets.all(6),
                          collapsedTextColor: Colors.black,
                          iconColor: Color(0xff10AB83),
                          textColor: Color(0xff10AB83),
                          leading: IconButton(
                              onPressed: (() {}),
                              icon: Icon(
                                Icons.shopping_cart_checkout_outlined,
                                size: 16,
                                color: Colors.green,
                              )),
                          title: Text(
                            'Purcheses',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            ),
                          ),
                          children: [
                            IntrinsicHeight(
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 24,
                                    ),
                                    VerticalDivider(
                                      color: Color(0xffC9ECE3),
                                      width: 10,
                                      thickness: 1,
                                    ),
                                    SizedBox(
                                      width: 44,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Purchase List",
                                          style: textExpansionTile(12),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Purchase List",
                                          style: textExpansionTile(12),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Order List",
                                          style: textExpansionTile(12),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "VAT List",
                                          style: textExpansionTile(12),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text("Product Unit",
                                            style: textExpansionTile(12)),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text("Purchese Report",
                                            style: textExpansionTile(12)),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        ExpansionTile(
                          childrenPadding: EdgeInsets.all(6),
                          collapsedTextColor: Colors.black,
                          iconColor: Color(0xff10AB83),
                          textColor: Color(0xff10AB83),
                          leading: IconButton(
                              onPressed: (() {}),
                              icon: const Icon(
                                Icons.shopping_bag,
                                size: 16,
                              )),
                          title: Text(
                            'Sell',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            ),
                          ),
                          children: [
                            IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 24,
                                  ),
                                  VerticalDivider(
                                    color: Color(0xffC9ECE3),
                                    width: 10,
                                    thickness: 1,
                                  ),
                                  const SizedBox(
                                    width: 44,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Purchase List",
                                        style: textExpansionTile(12),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Purchase List",
                                        style: textExpansionTile(12),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Order List",
                                        style: textExpansionTile(12),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "VAT List",
                                        style: textExpansionTile(12),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        ExpansionTile(
                          childrenPadding: EdgeInsets.all(6),
                          collapsedTextColor: Colors.black,
                          iconColor: Color(0xff10AB83),
                          textColor: Color(0xff10AB83),
                          leading: IconButton(
                              onPressed: (() {}),
                              icon: Icon(
                                Icons.inventory,
                                size: 16,
                              )),
                          title: Text(
                            'Stock/Inventory',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            ),
                          ),
                          children: [
                            IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    width: 24,
                                  ),
                                  VerticalDivider(
                                    color: Color(0xffC9ECE3),
                                    width: 10,
                                    thickness: 1,
                                  ),
                                  SizedBox(
                                    width: 44,
                                  ),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Purchase List",
                                          style: textExpansionTile(12),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Purchase List",
                                          style: textExpansionTile(12),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Order List",
                                          style: textExpansionTile(12),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "VAT List",
                                          style: textExpansionTile(12),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                      ])
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            BodyTable(),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              color: Color(0xff10AB83),
              height: 50,
              minWidth: 330,
              onPressed: (() {}),
              child: Text(
                "Pay the balance",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        )),
      ),
    );
  }

  TextStyle textExpansionTile(double fs) {
    return TextStyle(
        fontSize: fs,
        fontWeight: FontWeight.w500,
        fontFamily: "Poppins",
        color: Color(0xff10AB83));
  }
}
