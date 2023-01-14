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
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 48,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Welcome Back",
                                style: TextStyle(),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Dream Walker",
                                style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            height: 58,
                            width: 58,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 4,
                                ),
                                borderRadius: BorderRadius.circular(16)),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 84,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home_filled,
                          size: 38,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home_filled,
                          size: 38,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home_filled,
                          size: 38,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home_filled,
                          size: 38,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(),
                        )
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
