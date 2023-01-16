import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class GuitarLessonMainPage extends StatefulWidget {
  const GuitarLessonMainPage({Key? key}) : super(key: key);

  @override
  State<GuitarLessonMainPage> createState() => _GuitarLessonMainPageState();
}

class _GuitarLessonMainPageState extends State<GuitarLessonMainPage> {
  int _index = 0;

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
                        // color: Colors.blue,
                        margin: const EdgeInsets.symmetric(vertical: 24),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0,
                              left: 16,
                              right: 16,
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
                                                      const Text(
                                                        "Guitar picking for beginners",
                                                        style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.white,
                                                            fontSize: 22),
                                                      ),
                                                      const SizedBox(
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
                                                  const Spacer(),
                                                  CircularPercentIndicator(
                                                    percent: 0.75,
                                                    radius: 28,
                                                    linearGradient: const LinearGradient(
                                                      colors: [
                                                        Colors.red,
                                                        Colors.orange,
                                                        Colors.yellow,
                                                      ],
                                                      begin: Alignment.topCenter,
                                                      end: Alignment.centerLeft,
                                                    ),
                                                    center: const Text(
                                                      "75%",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: const [
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
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 24),
                        height: 48,
                        color: Colors.orange,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.only(right: 16),
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(34, 37, 49, 1),
                                borderRadius: BorderRadius.circular(32),
                              ),
                              padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                              child: Row(
                                children: [
                                  Container(
                                    height: 32,
                                    width: 32,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Text(
                                    "Strumming",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                        ),
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
                    InkWell(
                      onTap: () {
                        setState(() {
                          _index = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home_filled,
                            size: 38,
                            color: _index == 0 ? Colors.black : Colors.grey,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            "Home",
                            style: TextStyle(
                              color: _index == 0 ? Colors.black : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.explore_outlined,
                          size: 38,
                          color: _index == 1 ? Colors.black : Colors.grey,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Discover",
                          style: TextStyle(
                            color: _index == 1 ? Colors.black : Colors.grey,
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.bookmark_border,
                          size: 38,
                          color: _index == 2 ? Colors.black : Colors.grey,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Bookmark",
                          style: TextStyle(
                            color: _index == 2 ? Colors.black : Colors.grey,
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.apps,
                          size: 38,
                          color: _index == 3 ? Colors.black : Colors.grey,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "More",
                          style: TextStyle(
                            color: _index == 3 ? Colors.black : Colors.grey,
                          ),
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
