// ignore_for_file: unnecessary_brace_in_string_interps
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:newsapp/model/newsdata.dart';
import 'package:newsapp/weiget/const.dart';

class HttpModel {
  Future<List<Articles>> fetchAllNewsData(
      {required int pageNo, required String sortBy}) async {
    List<Articles> allNewsData = [];
    Articles articles;

    var responce = await http.get(Uri.parse(
        "${baseUrl}&q=bitcoin&page=$pageNo&pageSize=10&sortBy=$sortBy&apiKey=$tokenUrl"));

    var data = jsonDecode(responce.body);
    for (var i in data["articles"]) {
      articles = Articles.fromJson(i);
      allNewsData.add(articles);
    }

    return allNewsData;
  }
}
