import 'package:app_news/auth/cubit.dart';
import 'package:app_news/auth/state.dart';
import 'package:app_news/models/artical_model.dart';
import 'package:app_news/models/category_model.dart';
import 'package:app_news/widgets/articlecard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class categorylist extends StatelessWidget {
  const categorylist({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Newscubit, AppState>(
      builder: (context, state) {
        if (state is LoadedState) {
          return SliverList.builder(
              itemCount: state.articles.length,
              itemBuilder: (context, index) {
                return Articlecard(a: state.articles[index]);
              });
        } else if (state is ErrorState) {
          return SliverToBoxAdapter(
            child: Text(state.error),
          );
        } else {
          return SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}


//  CustomScrollView(
//       slivers: [
//         x == null
//             ? SliverToBoxAdapter(
//                 child: Center(
//                   child: CircularProgressIndicator(),
//                 ),
//               )
//             : SliverList.builder(
//                 itemCount: x!.length,
//                 itemBuilder: (context, index) {
//                   return Articlecard(a: x![index]);
//                 })
//       ],
//     );