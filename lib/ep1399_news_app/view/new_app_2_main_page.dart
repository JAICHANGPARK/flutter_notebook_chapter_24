import 'package:flutter/material.dart';

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
                        Container(),
                        Container(),
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
