import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_24/ep1371_furniture_app/view/furniture_main_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(FurnitureApp());
}

class FurnitureApp extends StatelessWidget {
  const FurnitureApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FurnitureMainPage(),
    );
  }
}
