import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_24/ep1396_guitar_lesson_app/view/guitar_lesson_main_page.dart';

void main() {
  runApp(GuitarLessonApp());
}

class GuitarLessonApp extends StatelessWidget {
  const GuitarLessonApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GuitarLessonMainPage(),
    );
  }
}
