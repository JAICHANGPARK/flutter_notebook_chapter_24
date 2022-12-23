import 'package:flutter/material.dart';

class NewsAppListPage extends StatefulWidget {
  const NewsAppListPage({Key? key}) : super(key: key);

  @override
  State<NewsAppListPage> createState() => _NewsAppListPageState();
}

class _NewsAppListPageState extends State<NewsAppListPage> {
  List<String> listMenuItems = [
    "Sports",
    "Politics",
    "Fashion",
    "Moda",
    "Flutter",
    "Android",
    "iOS",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Container(
            height: 42,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listMenuItems.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 16),
                  padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  child: Center(
                    child: Text("${listMenuItems[index]}"),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: ListView.separated(
              itemCount: 10,
              separatorBuilder: (context, _) => const Divider(
                color: Colors.grey,
                height: 34,
              ),
              itemBuilder: (context, index) {
                return Container(
                  height: 148,
                  // color: Colors.lightGreenAccent,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "SPORTS",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(0, 16, 24, 0),
                                  child: Text(
                                    "SPORTS TITLE SPORTS TITLE SPORTS TITLE SPORTS TITLE SPORTS TITLE SPORTS TITLE ",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.pink,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Text("4h ago - 21 min read"),
                          const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.bookmark_border,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_horiz,
                              )),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
