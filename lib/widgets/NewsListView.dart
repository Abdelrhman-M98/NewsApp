import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/widgets/news_container.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> newsAPI;
  const NewsListView({
    super.key,
    required this.newsAPI,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: newsAPI.length,
          (context, index) {
        return Padding(
          padding: const EdgeInsets.only(
            bottom: 17.0,
          ),
          child: NewsTile(news: newsAPI[index]),
        );
      }),
    );
  }
}
