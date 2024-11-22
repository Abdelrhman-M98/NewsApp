import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);

  Future<List<ArticleModel>> getGenralNews({required String category}) async {
    Response response = await dio.get(
        'https://gnews.io/api/v4/top-headlines?category=$category&lang=ar&country=eg&max=10&apikey=5886011d827e571b92757843275ac213');

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticleModel> articlesList = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel.fromJson(article);
      articlesList.add(articleModel);
    }
    return articlesList;
  }
}
