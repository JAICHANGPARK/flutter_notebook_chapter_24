import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_24/ep1377_news_app/view/news_app_main_apge.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const NewsAppMainPage(),
      },
    );
  }
}
