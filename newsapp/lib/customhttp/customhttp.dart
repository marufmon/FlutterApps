import 'dart:convert';

import 'package:http/http.dart';
import 'package:newsapp/model/newsdata.dart';
import 'package:newsapp/weiget/const.dart';

class CustomUrl {
  Future<List<Articles>> fetchAllNewsData(
      {required String pageNo, required String sortBy}) async {
    List<Articles> allNewsData = [];
    Articles articles;

    var response = await get(Uri.parse(
        "$baseUrl?q=bitcoin&page=$pageNo&pageSize=10&sortBy=$sortBy&apiKey=$tokenUrl"));
    print(response.statusCode.toString());
    var data = jsonDecode(response.body);
    for (var i in data['articles']) {
      articles = Articles.fromJson(i);
      allNewsData.add(articles);
    }

    return allNewsData;
  }
}
