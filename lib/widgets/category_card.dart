import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/Views/category_view.dart';
import 'package:news_app_ui_setup/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return CategoryView(
                  category: category.categoryName,
                );
              },
            ),
          );
        },
        child: Container(
          height: 85,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(category.imageAssetUrl),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Text(
              category.categoryName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
