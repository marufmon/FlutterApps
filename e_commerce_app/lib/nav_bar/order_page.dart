import 'package:e_commerce_app/provider/orderprovider.dart';
import 'package:e_commerce_app/widget/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  void initState() {
    // TODO: implement initState

    Provider.of<OrderProvider>(context, listen: false).getOrderListData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final orderList = Provider.of<OrderProvider>(context).orderList;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Order",
            style: GoogleFonts.roboto(fontSize: 20, letterSpacing: 2),
          ),
        ),
        body: orderList.isEmpty
            ? spinkit
            : SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: orderList.length,
                        itemBuilder: ((context, index) {
                          var clr = orderList[index]
                              .orderStatus!
                              .orderStatusCategory!
                              .id;
                          return Container(
                            height: 150,
                            padding:
                                EdgeInsets.only(top: 10, right: 10, left: 10),
                            child: Card(
                              elevation: 10,
                              child: Container(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                            flex: 2,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  clr == 1
                                                      ? Icons.snowmobile_sharp
                                                      : clr == 2
                                                          ? Icons.abc
                                                          : Icons
                                                              .zoom_in_map_sharp,
                                                  color: clr == 1
                                                      ? Colors.red
                                                      : clr == 2
                                                          ? Colors.green
                                                          : Colors.blue,
                                                ),
                                                Text(
                                                    "Order Id: " +
                                                        orderList[index]
                                                            .id
                                                            .toString(),
                                                    style: GoogleFonts.roboto(
                                                        fontSize: 16,
                                                        letterSpacing: 1,
                                                        color: Colors.teal)),
                                              ],
                                            )),
                                        Expanded(
                                            flex: 2,
                                            child: Container(
                                              padding: EdgeInsets.all(15),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      "Name:${orderList[index].user!.name} ",
                                                      style: GoogleFonts.roboto(
                                                          fontSize: 16,
                                                          letterSpacing: 1,
                                                          color: Colors.teal)),
                                                  SizedBox(
                                                    height: 25,
                                                  ),
                                                  Text(
                                                      "Price: ${orderList[index].price}",
                                                      style: GoogleFonts.roboto(
                                                          fontSize: 16,
                                                          color: Colors.teal)),
                                                ],
                                              ),
                                            )),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }))
                  ],
                ),
              ),
      ),
    );
  }
}
