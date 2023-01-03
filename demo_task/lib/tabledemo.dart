// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BodyTable extends StatelessWidget {
  const BodyTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Table(
          border: TableBorder.all(
              width: 2,
              color: Color(0xff10AB83),
              borderRadius: BorderRadius.circular(4)),
          columnWidths: <int, TableColumnWidth>{
            0: IntrinsicColumnWidth(flex: 2),
            1: FlexColumnWidth(),
          },
          children: [
            TableRow(children: [
              TableCell(
                  verticalAlignment: TableCellVerticalAlignment.fill,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(4)),
                          color: Color(0xff10AB83),
                        ),
                        width: double.infinity,
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                        child: Text(
                          "Dues",
                          style: buildTS(20, Colors.white),
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                        height: 40,
                        child: Row(
                          children: [
                            Text(
                              "Previous Due",
                              style: buildTS(14, Colors.black),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "01 January 2022",
                              style: buildTS(12, Colors.black, FontWeight.w400),
                            )
                          ],
                        ),
                        // color: Colors.blueGrey,
                      )
                    ],
                  )),
              Container(
                width: 78,
                height: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Text("Due",
                        style: buildTS(
                            12, Colors.black, FontWeight.w500, "Inter")),
                    Text("৳ 20000",
                        style: buildTS(
                            12, Color(0xffF37048), FontWeight.w600, "Inter"))
                  ],
                ),
              )
            ]),

            /// parchases Row...
            TableRow(children: [
              TableCell(
                  verticalAlignment: TableCellVerticalAlignment.fill,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(4)),
                          color: Color(0xff10AB83),
                        ),
                        width: double.infinity,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Text(
                          "Purchase",
                          style: buildTS(20, Colors.white),
                        ),
                      ),
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff10AB83))),
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                          height: 68,
                          child: Column(
                            children: [
                              textInHorizotal(
                                  "Invoice Date : ", "01 January 2022"),
                              textInHorizotal("Invoice No. : ", "5386328"),
                            ],
                          )),
                      Container(
                        height: 164,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff10AB83))),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Container(
                                  margin: EdgeInsets.all(16),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      textInVertical(
                                          "200 pcs x 200", "Test product 01"),
                                      textInVertical(
                                          "200 pcs x 200", "Test product 01"),
                                      textInVertical(
                                          "200 pcs x 200", "Test product 01"),
                                    ],
                                  ),
                                )),
                            customDivider(),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("৳ 40000",
                                    style: buildTS(12, Colors.black,
                                        FontWeight.w500, "Poppins")),
                                Text("৳ 6000",
                                    style: buildTS(12, Colors.black,
                                        FontWeight.w500, "Poppins")),
                                Text("৳ 4000",
                                    style: buildTS(12, Colors.black,
                                        FontWeight.w500, "Poppins")),
                              ],
                            )),
                          ],
                        ),
                      ),
                      buildTowItemData(
                          firstItemName: "Discount",
                          firstItemPrice: '0',
                          secoundItemName: "Vat",
                          secoundItemPrice: '0'),
                      buildTowItemData(
                          firstItemName: "Grand Total",
                          firstItemPrice: '50000',
                          secoundItemName: "Previous Due",
                          secoundItemPrice: '20000'),
                      buildTowItemData(
                          firstItemName: "Total Amount",
                          firstItemPrice: '70000',
                          secoundItemName: "Total Payment",
                          secoundItemPrice: '40000'),
                      Container(
                        height: 46,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff10AB83))),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Container(
                                  margin: EdgeInsets.all(12),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Remaining Balance",
                                        style: buildTS(
                                            11, Colors.black, FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                )),
                            customDivider(),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("৳ 30000",
                                    style: buildTS(12, Colors.black,
                                        FontWeight.w500, "Poppins")),
                              ],
                            )),
                          ],
                        ),
                      ),
                    ],
                  )),
              Container(
                width: 78,
                height: 510,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Text("Due",
                        style: buildTS(
                            12, Colors.black, FontWeight.w500, "Inter")),
                    Text("৳ 30000",
                        style: buildTS(
                            12, Color(0xffF37048), FontWeight.w600, "Inter"))
                  ],
                ),
              )
            ]),

            /// parchases Row...
            TableRow(children: [
              TableCell(
                  verticalAlignment: TableCellVerticalAlignment.fill,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(4)),
                          color: Color(0xff10AB83),
                        ),
                        width: double.infinity,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Text(
                          "Return",
                          style: buildTS(20, Colors.white),
                        ),
                      ),
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff10AB83))),
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                          height: 68,
                          child: Column(
                            children: [
                              textInHorizotal(
                                  "Invoice Date : ", "01 January 2022"),
                              textInHorizotal("Invoice No. : ", "5386328"),
                            ],
                          )),
                      Container(
                        height: 164,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff10AB83))),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Container(
                                  margin: EdgeInsets.all(16),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      textInVertical(
                                          "200 pcs x 200", "Test product 01"),
                                      textInVertical(
                                          "200 pcs x 200", "Test product 01"),
                                      textInVertical(
                                          "200 pcs x 200", "Test product 01"),
                                    ],
                                  ),
                                )),
                            customDivider(),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("৳ 40000",
                                    style: buildTS(12, Colors.black,
                                        FontWeight.w500, "Poppins")),
                                Text("৳ 6000",
                                    style: buildTS(12, Colors.black,
                                        FontWeight.w500, "Poppins")),
                                Text("৳ 4000",
                                    style: buildTS(12, Colors.black,
                                        FontWeight.w500, "Poppins")),
                              ],
                            )),
                          ],
                        ),
                      ),
                      buildTowItemData(
                          firstItemName: "Discount",
                          firstItemPrice: '0',
                          secoundItemName: "Vat",
                          secoundItemPrice: '0'),
                      buildTowItemData(
                          firstItemName: "Grand Total",
                          firstItemPrice: '50000',
                          secoundItemName: "Previous Due",
                          secoundItemPrice: '20000'),
                      buildTowItemData(
                          firstItemName: "Total Amount",
                          firstItemPrice: '70000',
                          secoundItemName: "Total Payment",
                          secoundItemPrice: '40000'),
                      Container(
                        height: 46,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff10AB83))),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Container(
                                  margin: EdgeInsets.all(12),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Remaining Balance",
                                        style: buildTS(
                                            11, Colors.black, FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                )),
                            customDivider(),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("৳ 30000",
                                    style: buildTS(12, Colors.black,
                                        FontWeight.w500, "Poppins")),
                              ],
                            )),
                          ],
                        ),
                      ),
                    ],
                  )),
              Container(
                width: 78,
                height: 510,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Text("Due",
                        style: buildTS(
                            12, Colors.black, FontWeight.w500, "Inter")),
                    Text("৳ 20000",
                        style: buildTS(
                            12, Color(0xffF37048), FontWeight.w600, "Inter"))
                  ],
                ),
              )
            ]),

            /// parchases Row...
            TableRow(children: [
              TableCell(
                  verticalAlignment: TableCellVerticalAlignment.fill,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(4)),
                          color: Color(0xff10AB83),
                        ),
                        width: double.infinity,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Text(
                          "Payment",
                          style: buildTS(20, Colors.white),
                        ),
                      ),
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff10AB83))),
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                          height: 68,
                          child: Column(
                            children: [
                              textInHorizotal(
                                  "Invoice Date : ", "01 January 2022"),
                              textInHorizotal("Invoice No. : ", "5386328"),
                            ],
                          )),
                      Container(
                        height: 164,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff10AB83))),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Container(
                                  margin: EdgeInsets.all(16),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      textInVertical(
                                          "200 pcs x 200", "Test product 01"),
                                      textInVertical(
                                          "200 pcs x 200", "Test product 01"),
                                      textInVertical(
                                          "200 pcs x 200", "Test product 01"),
                                    ],
                                  ),
                                )),
                            customDivider(),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("৳ 40000",
                                    style: buildTS(12, Colors.black,
                                        FontWeight.w500, "Poppins")),
                                Text("৳ 6000",
                                    style: buildTS(12, Colors.black,
                                        FontWeight.w500, "Poppins")),
                                Text("৳ 4000",
                                    style: buildTS(12, Colors.black,
                                        FontWeight.w500, "Poppins")),
                              ],
                            )),
                          ],
                        ),
                      ),
                      buildTowItemData(
                          firstItemName: "Discount",
                          firstItemPrice: '0',
                          secoundItemName: "Vat",
                          secoundItemPrice: '0'),
                      buildTowItemData(
                          firstItemName: "Grand Total",
                          firstItemPrice: '50000',
                          secoundItemName: "Previous Due",
                          secoundItemPrice: '20000'),
                      buildTowItemData(
                          firstItemName: "Total Amount",
                          firstItemPrice: '70000',
                          secoundItemName: "Total Payment",
                          secoundItemPrice: '40000'),
                      Container(
                        height: 46,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff10AB83))),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Container(
                                  margin: EdgeInsets.all(12),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Remaining Balance",
                                        style: buildTS(
                                            11, Colors.black, FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                )),
                            customDivider(),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("৳ 30000",
                                    style: buildTS(12, Colors.black,
                                        FontWeight.w500, "Poppins")),
                              ],
                            )),
                          ],
                        ),
                      ),
                    ],
                  )),
              Container(
                width: 78,
                height: 510,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Text("Due",
                        style: buildTS(
                            12, Colors.black, FontWeight.w500, "Inter")),
                    Text("৳ 15000",
                        style: buildTS(
                            12, Color(0xffF37048), FontWeight.w600, "Inter"))
                  ],
                ),
              )
            ]),
          ]),
    );
  }

  Container buildTowItemData({
    required String firstItemName,
    required String firstItemPrice,
    required String secoundItemName,
    required String secoundItemPrice,
  }) {
    return Container(
      height: 64,
      decoration: BoxDecoration(border: Border.all(color: Color(0xff10AB83))),
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      firstItemName,
                      style: buildTS(12, Colors.black, FontWeight.w600),
                    ),
                    Text(
                      secoundItemName,
                      style: buildTS(12, Colors.black, FontWeight.w600),
                    ),
                  ],
                ),
              )),
          customDivider(),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("৳ ${firstItemPrice}",
                  style: buildTS(12, Colors.black, FontWeight.w500, "Poppins")),
              Text("৳ ${secoundItemPrice}",
                  style: buildTS(12, Colors.black, FontWeight.w500, "Poppins")),
            ],
          )),
        ],
      ),
    );
  }

  Container customDivider() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      height: double.infinity,
      width: 1,
      color: Color(0xff10AB83),
    );
  }

  Row textInHorizotal(
    String firstStr,
    String SecondStr,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          firstStr,
          style: buildTS(14, Colors.black, FontWeight.w400),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          SecondStr,
          style: buildTS(
            12,
            Colors.black,
          ),
        ),
      ],
    );
  }

  TextStyle buildTS(double fs, [Color? clr, FontWeight? fw, String? fF]) {
    return TextStyle(
        fontSize: fs,
        fontWeight: fw == null ? FontWeight.w600 : fw,
        fontFamily: fF == null ? "Poppins" : "Inter",
        color: clr == null ? Color(0xff10AB83) : clr);
  }

  Column textInVertical(
    String firstStr,
    String SecondStr,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          SecondStr,
          style: buildTS(12, Colors.black, FontWeight.w600),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          firstStr,
          style: buildTS(12, Colors.black, FontWeight.w400),
        ),
      ],
    );
  }
}
