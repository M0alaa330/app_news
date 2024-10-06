import 'package:app_news/models/category_model.dart';
import 'package:app_news/widgets/categorycard.dart';
import 'package:flutter/material.dart';

class CategoryListview extends StatelessWidget {
  const CategoryListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: categorymodel.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return CategoryCard(c: categorymodel[index]);
      },
    );
  }
}
