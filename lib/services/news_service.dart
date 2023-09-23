import 'package:dio/dio.dart';

import '../models/articl_model.dart';

class NewsServices{
final Dio dio;

  NewsServices(this.dio);

  Future<List<ArticlModel>> getNews({required String category}) async {
  try {
  var response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=1bb7c8e8bcf94161981492d3a3221006&category=$category');
  Map<String ,dynamic> jsonData = response.data;
  List<dynamic> articles = jsonData['articles'];
  List<ArticlModel> articlesList = [];
  for (var article in articles) {
    ArticlModel articlModel = ArticlModel(image: article['urlToImage'], title:article['title'] , subTitle:article['description'] );
    articlesList.add(articlModel);
  }
    return articlesList;
} catch (e) {
    return [];
}
}
}