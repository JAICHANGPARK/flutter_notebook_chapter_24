import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_24/ep1354_real_estate_property_app/view/rep_home_screen.dart';

class RealEstatePropertyApp extends StatelessWidget {
  const RealEstatePropertyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RealEstatePropertyHomeScreen(),
    );
  }
}
