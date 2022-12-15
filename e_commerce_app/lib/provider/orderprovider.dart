import 'package:e_commerce_app/custom_http/custom_http.dart';
import 'package:e_commerce_app/model/ordermodel.dart';
import 'package:flutter/material.dart';

class OrderProvider with ChangeNotifier {
  List<OrderModel> orderList = [];

  getOrderListData() async {
    orderList = await CustomeHttpRequest.fetchOrderData();
    notifyListeners();
  }
}
