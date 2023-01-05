import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_24/ep1386_ai_image_generator_app/view/almystic_main_page.dart';

void main() {
  runApp(const AIImageGeneratorApp());
}

class AIImageGeneratorApp extends StatelessWidget {
  const AIImageGeneratorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AlmysticMainPage(),
    );
  }
}
