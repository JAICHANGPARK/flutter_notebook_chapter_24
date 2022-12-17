import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_24/ep1368_fashion_e_commerce_app/view/fec_main_page.dart';

void main() {
  runApp(FashionECommerceApp());
}

class FashionECommerceApp extends StatelessWidget {
  const FashionECommerceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FashionECommerceMainPage(),
    );
  }
}
