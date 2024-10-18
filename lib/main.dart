import 'package:app_news/auth/cubit.dart';
import 'package:app_news/models/category_model.dart';
import 'package:app_news/screens/homescreen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => Newscubit()..getnews(category: "general"),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        ));
  }
}
