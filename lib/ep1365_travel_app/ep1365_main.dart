import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_24/ep1365_travel_app/view/travel_app_main_page.dart';

void main() {
  runApp(const TripifyTravelApp());
}

class TripifyTravelApp extends StatelessWidget {
  const TripifyTravelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TravelAppMainPage(),
    );
  }
}
