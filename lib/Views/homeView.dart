// ignore: file_names
// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/NewsListViewBuilder.dart';
import 'package:news_app_ui_setup/widgets/categoriesListView.dart';

class homeView extends StatefulWidget {
  const homeView({super.key});

  @override
  State<homeView> createState() => _homeViewState();
}

class _homeViewState extends State<homeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "News",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Cloud",
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CategoriesListView(),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 18,
              ),
            ),
            const NewsListViewBuilder(apiCategory: "general"),
          ],
        ));
  }
}
