import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_24/ep1351_cargo_shipping_app/view/cargo_shipping_main_page.dart';

class CargoShippingApp extends StatelessWidget {
  const CargoShippingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CargoShippingMainPage(),
    );
  }
}
