import 'package:app_news/models/artical_model.dart';
import 'package:app_news/screens/articledetails_screen.dart';
import 'package:flutter/material.dart';

class Articlecard extends StatelessWidget {
  Articlecard({
    super.key,
    required this.a,
  });
  final ArticalModel a;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ArticledetailsScreen(
              url: a.url,
            ),
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 8),
        child: Container(
          width: double.infinity,
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: a.image == null
                        ? AssetImage("assets/images/error.jpg")
                        : NetworkImage(a.image!) as ImageProvider,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  a.title ?? 'No Title',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Expanded(
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  a.desc ?? 'No description available',
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.normal,
                      fontSize: 15),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
