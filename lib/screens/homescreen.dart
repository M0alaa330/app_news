import 'package:app_news/apis/api_services.dart';
import 'package:app_news/models/artical_model.dart';
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
  List<ArticalModel>? x;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    get();
  }

  get() async {
    ApiServices api = ApiServices();
    x = await api.getdata();
    setState(() {});
  }

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
              child: SizedBox(height: 120, child: CategoryListview()),
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