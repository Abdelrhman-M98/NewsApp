import 'package:flutter/foundation.dart';

class ArticleModel {
  final String? image;
  final String title;
  final String subTitle;
  final String url;
  final ArticleSource source;

  ArticleModel(
      {required this.source,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.url});

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      image: json['image'],
      title: json['title'],
      subTitle: json['description'],
      url: json['url'],
      source: ArticleSource(
        name: json['source']['name'],
        url: json['source']['url'],
      ),
    );
  }
}

class ArticleSource {
  final String name;
  final String url;

  ArticleSource({required this.name, required this.url});
}
