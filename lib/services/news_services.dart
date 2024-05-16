import 'package:dio/dio.dart';
import 'package:newsapp/models/news_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);

  Future<List<NewsModel>> getGeneralNews(String whatNews) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=66e29dda54444f32bb5b8c2c68a0a02e&category=$whatNews');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<NewsModel> article = [];

      for (var element in articles) {
        NewsModel articleModel = NewsModel.fromJson(element);
        article.add(articleModel);
      }
      return article;
    } on Exception catch (e) {
      
      return [];
    }
  }
}
