import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_24/ep1383_ecommerce_app/view/ecommerce_main_page.dart';

void main() {
  runApp(const EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const EcommerceMainPage(),
      },
    );
  }
}
