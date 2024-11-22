import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/services/newsService.dart';
import 'package:news_app_ui_setup/widgets/NewsListView.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
    required this.apiCategory,
  });

  final String apiCategory;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;

  @override
  void initState() {
    super.initState();
    future = NewsServices(Dio()).getGenralNews(category: widget.apiCategory);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              newsAPI: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    "Oops, there is an Error Please Try Again Later",
                    style: TextStyle(
                        color: Colors.amber,
                        backgroundColor: Colors.black,
                        fontSize: 25),
                  ),
                ),
              ),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(
                  color: Colors.orange,
                ),
              ),
            );
          }
        });
  }
}
