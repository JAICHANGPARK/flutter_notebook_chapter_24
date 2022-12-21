import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_24/ep1371_furniture_app/controller/funiture_app_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    return Consumer(builder: (context, ref, _) {
      final homeIndex = ref.watch(furnitureMenuIndex);
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
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TabBarView(children: [
                  GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          color: Colors.blue,
                        );
                      }),
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                ]),
              )),
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
                    onPressed: () {
                      ref.read(furnitureMenuIndex.notifier).update((state) => 0);
                    },
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
    });
  }
}
