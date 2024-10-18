import 'package:app_news/apis/api_services.dart';
import 'package:app_news/models/artical_model.dart';
import 'package:app_news/models/category_model.dart';
import 'package:app_news/widgets/articlecard.dart';
import 'package:app_news/widgets/categorylistscreem.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({
    super.key,
    required this.categorymodel,
  });
  final CategoryModel categorymodel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 20,
              )),
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              categorymodel.title,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: CustomScrollView(
          slivers: [categorylist(title: categorymodel.title)],
        ));
  }
}
