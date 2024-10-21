import 'package:app_news/auth/cubit.dart';
import 'package:app_news/auth/state.dart';
import 'package:app_news/widgets/articlecard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArticleListview extends StatelessWidget {
  const ArticleListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Newscubit, AppState>(builder: (context, state) {
      print(state);
      if (state is LoadedState) {
        return SliverList.builder(
          itemCount: state.articles!.length,
          itemBuilder: (context, index) {
            return Articlecard(a: state.articles![index]);
          },
        );
      } else if (state is ErrorState) {
        return SliverToBoxAdapter(
          child: Text(state.error!),
        );
      } else {
        return SliverToBoxAdapter(
          child: Center(child: CircularProgressIndicator()),
        );
      }
    });
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
// x == null
//         ? SliverToBoxAdapter(
//             child: Center(
//               child: CircularProgressIndicator(),
//             ),
//           )
//         : SliverList.builder(
//             //دول نعملهم مع listview.bulider
//             // shrinkWrap: true,
//             // physics: NeverScrollableScrollPhysics(),
//             itemCount: x!.length,
//             itemBuilder: (context, index) {
//               return Articlecard(a: x![index]);
//             },
//           );