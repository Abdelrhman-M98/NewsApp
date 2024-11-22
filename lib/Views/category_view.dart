import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/NewsListViewBuilder.dart';

class CategoryView extends StatelessWidget {
  final String category;
  const CategoryView({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [NewsListViewBuilder(apiCategory: category)],
      ),
    );
  }
}
