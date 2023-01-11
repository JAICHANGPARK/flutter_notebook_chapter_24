import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_24/ep1393_property_app/view/property_main_page.dart';

void main() {
  runApp(PropertyApp());
}

class PropertyApp extends StatelessWidget {
  const PropertyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Property App",
      routes: {
        "/": (context) => PropertyMainPage(),
      },
    );
  }
}
