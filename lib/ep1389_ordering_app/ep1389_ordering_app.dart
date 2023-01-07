import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_24/ep1389_ordering_app/view/ordering_main_page.dart';

void main() {
  runApp(OrderingApp());
}

class OrderingApp extends StatelessWidget {
  const OrderingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OrderingMainPage(),
    );
  }
}
