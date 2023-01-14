import 'package:flutter/material.dart';

class GuitarLessonMainPage extends StatefulWidget {
  const GuitarLessonMainPage({Key? key}) : super(key: key);

  @override
  State<GuitarLessonMainPage> createState() => _GuitarLessonMainPageState();
}

class _GuitarLessonMainPageState extends State<GuitarLessonMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(232, 232, 232, 1),
                ),
              )),
          Positioned(
              child: Column(
            children: [],
          )),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 100,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
              ))
        ],
      ),
    );
  }
}
