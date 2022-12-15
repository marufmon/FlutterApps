import 'package:e_commerce_app/custom_http/custom_http.dart';
import 'package:e_commerce_app/model/productmodel.dart';
import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> productList = [];

  getProductData() async {
    productList = await CustomeHttpRequest.getProductApi();
    notifyListeners();
  }

  void deleteProductById(int index) {
    productList.removeAt(index);
    notifyListeners();
  }
}
