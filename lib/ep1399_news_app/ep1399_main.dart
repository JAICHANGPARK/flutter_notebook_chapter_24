import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_24/ep1399_news_app/view/new_app_2_main_page.dart';

void main() {
  runApp(const NewsApp2());
}

class NewsApp2 extends StatelessWidget {
  const NewsApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NewsApp2MainPage(),
    );
  }
}
