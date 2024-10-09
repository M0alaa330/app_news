import 'package:app_news/apis/api_services.dart';
import 'package:app_news/models/artical_model.dart';
import 'package:app_news/widgets/articlecard.dart';
import 'package:flutter/material.dart';

class ArticleListview extends StatefulWidget {
  const ArticleListview({super.key});

  @override
  State<ArticleListview> createState() => _ArticleListviewState();
}

class _ArticleListviewState extends State<ArticleListview> {
  List<ArticalModel>? x;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    get();
  }

  get() async {
    ApiServices apiservices = ApiServices();
    x = await apiservices.getdata(category: 'general');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return x == null
        ? SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : SliverList.builder(
            //دول نعملهم مع listview.bulider
            // shrinkWrap: true,
            // physics: NeverScrollableScrollPhysics(),
            itemCount: x!.length,
            itemBuilder: (context, index) {
              return Articlecard(a: x![index]);
            },
          );
  }
}

/*

x == null
        ? SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : SliverList.builder(
            //دول نعملهم مع listview.bulider
            // shrinkWrap: true,
            // physics: NeverScrollableScrollPhysics(),
            itemCount: x!.length,
            itemBuilder: (context, index) {
              return Articlecard(a: x![index]);
            },
          );
 */
