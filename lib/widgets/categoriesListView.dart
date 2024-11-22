import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({super.key});

  final List<CategoryModel> Categories = [
    CategoryModel(
        imageAssetUrl: 'assets/business.avif', categoryName: 'business'),
    CategoryModel(
        imageAssetUrl: 'assets/entertaiment.avif',
        categoryName: 'entertainment'),
    CategoryModel(
        imageAssetUrl: 'assets/general.avif', categoryName: 'general'),
    CategoryModel(
      imageAssetUrl: 'assets/health.avif',
      categoryName: 'health',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/science.avif',
      categoryName: 'science',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/sports.avif',
      categoryName: 'sports',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/technology.jpeg',
      categoryName: 'technology',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 5.0,
      ),
      child: SizedBox(
        height: 85,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Categories.length,
            itemBuilder: (context, index) {
              return CategoryCard(
                category: Categories[index],
              );
            }),
      ),
    );
  }
}
