import 'package:app_news/models/artical_model.dart';
import 'package:dio/dio.dart';

class ApiServices {
  Dio dio = Dio();
  final String _baseurl = "https://newsapi.org";
  Future<List<ArticalModel>> getdata({required String category}) async {
    Response response = await dio.get(
        "$_baseurl/v2/top-headlines?country=us&apiKey=760c40dc412149be8b2061f38f0cc5ad&category=$category");
    Map<String, dynamic> mapdata = response.data;
    List<ArticalModel> articlelist = [];
    for (var i in mapdata['articles']) {
      articlelist.add(ArticalModel.fromjson(i));
    }
    return articlelist;
  }
}
