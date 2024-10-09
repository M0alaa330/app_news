import 'package:app_news/apis/api_services.dart';
import 'package:app_news/models/artical_model.dart';
import 'package:app_news/widgets/article_listview.dart';
import 'package:app_news/widgets/articlecard.dart';
import 'package:app_news/widgets/category_listview.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Recently",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
              Text(
                " News",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.yellow),
              ),
            ],
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 120,
                child: CategoryListview(),
              ),
            ),
            ArticleListview()
          ],
        ));
  }
}
/*
Column(
          children: [
            SizedBox(
              height: 120,
              child: CategoryListview(),
            ),
            x == null
                ? Center(child: CircularProgressIndicator())
                : Expanded(
                    child: ListView.builder(
                      itemCount: x!.length,
                      itemBuilder: (context, index) {
                        return Articlecard(a: x![index]);
                      },
                    ),
                  ),
          ],
        )
*/
/*
CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CategoryListview(),
            ),
            x == null
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : SliverToBoxAdapter(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: x!.length,
                      itemBuilder: (context, index) {
                        return Articlecard(a: x![index]);
                      },
                    ),
                  )
          ],
        ) 
*/
/*
  x == null
                ? const SliverFillRemaining(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                : SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return Articlecard(a: x![index]);
                      },
                      childCount: x!.length,
                    ),
                  ),
*/ 