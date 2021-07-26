import 'package:http/http.dart' as http;
import 'package:newsappassignment/utils/AppUrls.dart';
import 'dart:convert';

import 'package:newsappassignment/view/model/NewsModel.dart';

class NewsRepo {
  Future<List<NewsModel>> getNewsMy() async {
    String url = AppUrls.articlesURL;
    final result = await http.get(Uri.parse(url));

    if (result.statusCode != 200) {
      throw Exception();
    } else {
      List<NewsModel> productslist = parsedJsonMy(result.body);
      return productslist;
    }
  }

  List<NewsModel> parsedJsonMy(final respoonseBody) {
    final parsed = json.decode(respoonseBody).cast<Map<String, dynamic>>();
    return parsed.map<NewsModel>((json) => NewsModel.fromJson(json)).toList();
  }
}
