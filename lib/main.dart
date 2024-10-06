import 'package:app_news/screens/articledetails_screen.dart';
import 'package:app_news/screens/homescreen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {"articledetails": (context) => ArticledetailsScreen()},
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
