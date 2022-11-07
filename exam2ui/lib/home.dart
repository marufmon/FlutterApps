// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:exam2ui/model/data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final decoration = DecorationList.generetedDecorationList();
  int totalCost = 0;

  getToatalCost() {
    int totalAmount = 0;
    decoration.forEach((element) {
      totalAmount += element.totalPrice;
      totalCost = totalAmount;
    });
  }

  @override
  void initState() {
    getToatalCost();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: IconButton(
                    onPressed: (() {}),
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 25,
                      color: Colors.grey,
                    )),
                title: Text(
                  "Order Detials",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  "My Cart",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              Container(
                height: 180,
                child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => Container(
                          margin: EdgeInsets.only(left: 20, right: 20),
                          height: 200,
                          width: double.infinity,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                    "https://i.pinimg.com/736x/e8/ce/e2/e8cee2dee6606847f88f5d740ab86659.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 5,
                                  child: Container(
                                    margin: EdgeInsets.only(top: 45, left: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "ANG Wireless",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "Headphone",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "\$",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.green),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "${decoration[index].totalPrice} ",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.green),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            MaterialButton(
                                              color: Colors.grey,
                                              height: 30,
                                              minWidth: 20,
                                              onPressed: (() {
                                                setState(() {
                                                  if (decoration[index]
                                                          .quantity >
                                                      0) {
                                                    decoration[index]
                                                        .quantity--;
                                                  }

                                                  decoration[index].totalPrice =
                                                      decoration[index].prices *
                                                          decoration[index]
                                                              .quantity;
                                                  print(decoration[index]
                                                      .totalPrice);
                                                });
                                                setState(() {
                                                  getToatalCost();
                                                });
                                              }),
                                              child: Icon(
                                                Icons.remove,
                                                size: 20,
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 17,
                                            ),
                                            Text(
                                              "${decoration[index].quantity}",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              width: 30,
                                            ),
                                            MaterialButton(
                                              color: Colors.grey,
                                              height: 30,
                                              minWidth: 20,
                                              onPressed: (() {
                                                setState(() {
                                                  decoration[index].quantity++;

                                                  decoration[index].totalPrice =
                                                      decoration[index].prices *
                                                          decoration[index]
                                                              .quantity;
                                                  print(decoration[index]
                                                      .totalPrice);
                                                });
                                                setState(() {
                                                  getToatalCost();
                                                });
                                              }),
                                              child: Icon(
                                                Icons.add,
                                                size: 20,
                                                color: Colors.black,
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
                    separatorBuilder: (_, index) => SizedBox(
                          width: 10,
                        ),
                    itemCount: decoration.length),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Delivery Location",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ListTile(
                leading: IconButton(
                    onPressed: (() {}),
                    icon: Icon(
                      Icons.production_quantity_limits,
                      size: 25,
                      color: Colors.grey,
                    )),
                title: Text(
                  "HeadPhone world",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                subtitle: Text("orginal"),
                trailing: IconButton(
                    onPressed: (() {}), icon: Icon(Icons.arrow_forward_ios)),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Payment method",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ListTile(
                leading: TextButton(onPressed: (() {}), child: Text("VISA")),
                title: Text(
                  "HeadPhone world",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                subtitle: Text("orginal"),
                trailing: IconButton(
                    onPressed: (() {}), icon: Icon(Icons.arrow_forward_ios)),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Order Info",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                height: 200,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "Delivery price................................................... \$ 5",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "Total price............................................... \$ $totalCost",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 60, top: 10),
                      child: MaterialButton(
                        color: Colors.blue,
                        height: 50,
                        minWidth: 200,
                        onPressed: (() {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                content: Container(
                              height: 150,
                              width: 150,
                              child: Column(
                                children: [
                                  Text(
                                    "The total price \$ ${totalCost + 5}",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    'Thank you buying\n my online home \n Decoraton items',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    size: 55,
                                    color: Colors.red,
                                  )
                                ],
                              ),
                            )),
                          );
                        }),
                        child: Text(
                          "Add Card",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
