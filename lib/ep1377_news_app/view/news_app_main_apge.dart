import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_24/ep1377_news_app/home/view/news_app_home_page.dart';
import 'package:ionicons/ionicons.dart';
import '../news_list/view/news_app_list_page.dart';

class NewsAppMainPage extends StatefulWidget {
  const NewsAppMainPage({Key? key}) : super(key: key);

  @override
  _NewsAppMainPageState createState() => _NewsAppMainPageState();
}

class _NewsAppMainPageState extends State<NewsAppMainPage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 16,
              right: 0,
              bottom: 100,
              top: 16,
              child: IndexedStack(
                index: _index,
                children: const [
                  NewsAppHomePage(),
                  NewsAppListPage(),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 100,
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(24, 24, 24, 16),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _index = 0;
                          });
                        },
                        icon: const Icon(Ionicons.home_outline),
                        color: _index == 0 ? Colors.white : Colors.grey,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _index = 1;
                          });
                        },
                        icon: const Icon(Ionicons.list_outline),
                        color: _index == 1 ? Colors.white : Colors.grey,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _index = 2;
                          });
                        },
                        icon: const Icon(Ionicons.settings_outline),
                        color: _index == 2 ? Colors.white : Colors.grey,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
