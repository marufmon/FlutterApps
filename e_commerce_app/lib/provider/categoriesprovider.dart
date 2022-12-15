import 'package:e_commerce_app/custom_http/custom_http.dart';
import 'package:e_commerce_app/model/categoriesmodel.dart';
import 'package:flutter/material.dart';

class CategoriesProvider with ChangeNotifier {
  List<CategoriesModel> categoryList = [];

  getCategoryData() async {
    categoryList = await CustomeHttpRequest.fetchCategoryData();
    notifyListeners();
  }
}
