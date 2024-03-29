import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsApp2MainPage extends StatefulWidget {
  const NewsApp2MainPage({Key? key}) : super(key: key);

  @override
  State<NewsApp2MainPage> createState() => _NewsApp2MainPageState();
}

class _NewsApp2MainPageState extends State<NewsApp2MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 0,
              child: DefaultTabController(
                length: 4,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "News",
                            style: TextStyle(color: Colors.white, fontSize: 28),
                          ),
                          Container(
                            height: 52,
                            width: 52,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const TabBar(
                      tabs: [
                        Tab(
                          text: "Trending",
                        ),
                        Tab(
                          text: "Health",
                        ),
                        Tab(
                          text: "Sports",
                        ),
                        Tab(
                          text: "Finance",
                        ),
                      ],
                      labelStyle: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      isScrollable: true,
                      unselectedLabelStyle: TextStyle(fontSize: 18),
                      indicatorColor: Colors.transparent,
                    ),
                    Expanded(
                        child: TabBarView(
                      children: [
                        Stack(
                          children: [
                            Positioned(
                              left: 84,
                              top: 48,
                              bottom: 100,
                              right: -48,
                              child: Transform.rotate(
                                angle: 0.05 * pi,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.red[100],
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8,
                                          vertical: 4,
                                        ),
                                        child: const Text(
                                          "LIVE",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        "Demand for Indian Generic drugs sktrockets in ...",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 30,
                                          height: 1.5,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      const Text("Updated just now."),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 16),
                                        child: Row(
                                          children: [
                                            const CircleAvatar(
                                              radius: 24,
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: const [
                                                Text("Published by"),
                                                Text("Dream Walker"),
                                              ],
                                            ),
                                            const Spacer(),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius: BorderRadius.circular(24),
                                              ),
                                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                                              child: const Text(
                                                "Follow",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                                        style: TextStyle(
                                          height: 1.5,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const Spacer(),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: const [
                                          CircleAvatar(
                                            child: Icon(Icons.thumb_up_alt_outlined),
                                          ),
                                          CircleAvatar(
                                            child: Icon(Icons.bookmark_border),
                                          ),
                                          CircleAvatar(
                                            child: Icon(Icons.share),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 20,
                              top: 16,
                              bottom: 120,
                              right: 20,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.amber[200],
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8,
                                        vertical: 4,
                                      ),
                                      child: const Text(
                                        "LIVE",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      "Demand for Indian Generic drugs sktrockets in ...",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 30,
                                        height: 1.5,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Text("Updated just now."),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 16),
                                      child: Row(
                                        children: [
                                          const CircleAvatar(
                                            radius: 24,
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: const [
                                              Text("Published by"),
                                              Text("Dream Walker"),
                                            ],
                                          ),
                                          const Spacer(),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius: BorderRadius.circular(24),
                                            ),
                                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                                            child: const Text(
                                              "Follow",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                                      style: TextStyle(
                                        height: 1.5,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const Spacer(),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: const [
                                        CircleAvatar(
                                          child: Icon(Icons.thumb_up_alt_outlined),
                                        ),
                                        CircleAvatar(
                                          child: Icon(Icons.bookmark_border),
                                        ),
                                        CircleAvatar(
                                          child: Icon(Icons.share),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                        const Placeholder(),
                        Container(),
                        Container(),
                      ],
                    ))
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              bottom: 16,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.home_filled),
                      iconSize: 32,
                    ),
                  ),
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.white.withOpacity(0.3),
                    foregroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                      iconSize: 32,
                    ),
                  ),
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.white.withOpacity(0.3),
                    foregroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.bookmark_border),
                      iconSize: 32,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
