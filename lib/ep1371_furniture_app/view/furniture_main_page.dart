import 'package:flutter/material.dart';

class FurnitureMainPage extends StatefulWidget {
  const FurnitureMainPage({Key? key}) : super(key: key);

  @override
  State<FurnitureMainPage> createState() => _FurnitureMainPageState();
}

class _FurnitureMainPageState extends State<FurnitureMainPage> {
  List<String> menuItems = [
    "All",
    "Newest",
    "Popular",
    "Chair",
    "Table",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("All Product"),
        titleTextStyle: const TextStyle(
          fontSize: 30,
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.filter_alt_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
        ],
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: DefaultTabController(
        length: menuItems.length,
        child: Column(
          children: [
            TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: menuItems
                  .map(
                    (e) => Tab(
                      text: e,
                    ),
                  )
                  .toList(),
            ),
            Expanded(child: const TabBarView(children: [])),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.home_outlined,
                  ),
                  iconSize: 32,
                  color: Colors.grey,
                ),
                Container(
                  height: 2,
                  width: 12,
                  // color: Colors.black,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.chair,
                  ),
                  iconSize: 32,
                ),
                Container(
                  height: 2,
                  width: 12,
                  color: Colors.black,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border,
                  ),
                  iconSize: 32,
                  color: Colors.grey,
                ),
                Container(
                  height: 2,
                  width: 12,
                  // color: Colors.black,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_cart_outlined,
                  ),
                  iconSize: 32,
                  color: Colors.grey,
                ),
                Container(
                  height: 2,
                  width: 12,
                  // color: Colors.black,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person_2_outlined,
                  ),
                  iconSize: 32,
                  color: Colors.grey,
                ),
                Container(
                  height: 2,
                  width: 12,
                  // color: Colors.black,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
