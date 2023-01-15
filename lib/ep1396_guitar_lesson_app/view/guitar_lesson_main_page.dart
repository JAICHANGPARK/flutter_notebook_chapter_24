import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

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
              decoration: const BoxDecoration(
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
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
                          const Spacer(),
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
                      ),
                      Container(
                        height: 300,
                        color: Colors.blue,
                        margin: const EdgeInsets.symmetric(vertical: 24),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0,
                              left: 24,
                              right: 24,
                              top: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(59, 68, 83, 1),
                                  borderRadius: BorderRadius.circular(32),
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: 16,
                                left: 0,
                                right: 0,
                                top: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(34, 37, 49, 1),
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(24),
                                              topRight: Radius.circular(24),
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                "https://cdn.pixabay.com/photo/2016/11/19/21/05/bass-guitar-1841186_960_720.jpg",
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        "Guitar picking for beginners",
                                                        style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.white,
                                                            fontSize: 22),
                                                      ),
                                                      SizedBox(
                                                        height: 8,
                                                      ),
                                                      Text(
                                                        "A little more to finish your course",
                                                        style: TextStyle(
                                                          color: Colors.white.withOpacity(0.8),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Spacer(),
                                                  CircularPercentIndicator(
                                                    percent: 0.75,
                                                    radius: 28,
                                                    linearGradient: LinearGradient(
                                                      colors: [
                                                        Colors.red,
                                                        Colors.orange,
                                                        Colors.yellow,
                                                      ],
                                                      begin: Alignment.topCenter,
                                                      end: Alignment.centerLeft,
                                                    ),
                                                    center: Text(
                                                      "75%",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "Resume Lesson",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      decoration: TextDecoration.underline,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 12,
                                                  ),
                                                  Icon(
                                                    Icons.arrow_forward,
                                                    color: Colors.white,
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        "Complementary categories to improve your skills",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 24),
                        height: 48,
                        color: Colors.orange,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(249, 248, 248, 1),
                      borderRadius: BorderRadius.circular(16),
                    ),
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
                      children: const [
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
                      children: const [
                        Icon(
                          Icons.explore_outlined,
                          size: 38,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Discover",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.bookmark_border,
                          size: 38,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Bookmark",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.apps,
                          size: 38,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "More",
                          style: TextStyle(color: Colors.grey),
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
