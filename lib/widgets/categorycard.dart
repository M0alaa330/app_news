import 'package:app_news/models/category_model.dart';
import 'package:app_news/screens/category_screen.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.c,
  });

  final CategoryModel c;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryScreen(
              categorymodel: c,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            alignment: Alignment.bottomCenter,
            width: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(c.image), fit: BoxFit.fill)),
            child: Container(
              height: 30,
              width: double.infinity,
              color: Colors.black26,
              child: Center(
                child: Text(
                  c.title,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
