import 'package:app_news/apis/api_services.dart';
import 'package:app_news/models/artical_model.dart';
import 'package:app_news/models/category_model.dart';
import 'package:app_news/widgets/articlecard.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({
    super.key,
    required this.categorymodel,
  });
  final CategoryModel categorymodel;

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List<ArticalModel>? x;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    get();
  }

  get() async {
    ApiServices apiservices = ApiServices();
    x = await apiservices.getdata(category: widget.categorymodel.title);
    setState(() {});
  }

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
              widget.categorymodel.title,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: CustomScrollView(
          slivers: [
            x == null
                ? SliverToBoxAdapter(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                : SliverList.builder(
                    itemCount: x!.length,
                    itemBuilder: (context, index) {
                      return Articlecard(a: x![index]);
                    })
          ],
        ));
  }
}
