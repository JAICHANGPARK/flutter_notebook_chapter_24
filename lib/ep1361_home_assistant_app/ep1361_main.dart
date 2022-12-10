import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_24/ep1361_home_assistant_app/view/home_assistant_main_page.dart';

void main() {
  runApp(HomeAssistantApp());
}

class HomeAssistantApp extends StatelessWidget {
  const HomeAssistantApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => HomeAssistantMainPage(),
      },
    );
  }
}
