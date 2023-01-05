import 'package:dio/dio.dart';

import '../entity/news.dart';
import '../utils/http_util.dart';

class ApiService{
  Future<News> getNews() async{
    var response=await HttpUtil().get("/everything?q=tesla&from=2022-10-14&sortBy=publishedAt&apiKey=989e07f02f47475daa7020cb0498af8e");
    if (response is DioError) {
      print(response.response!.statusCode);
      return News();
    }
    return News.fromJson(response.data);
  }
}