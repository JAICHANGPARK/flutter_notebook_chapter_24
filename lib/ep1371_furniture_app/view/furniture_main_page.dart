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

  int homeIndex = 0;

  setMenuIndex(int index) {
    setState(() {
      homeIndex = index;
    });
  }

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
      body: IndexedStack(
        index: homeIndex,
        children: [
          DefaultTabController(
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
                          childAspectRatio: 0.7,
                        ),
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 180,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(8),
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2016/11/21/12/59/couch-1845270_960_720.jpg",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              const Text("Cottages Sofa"),
                              const SizedBox(
                                height: 4,
                              ),
                              const Text("Stock: 21"),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 24,
                                    width: 24,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                        color: Colors.grey,
                                      ),
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Container(
                                    height: 24,
                                    width: 24,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                        color: Colors.grey,
                                      ),
                                      color: Colors.green,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Container(
                                    height: 24,
                                    width: 24,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                        color: Colors.grey,
                                      ),
                                      color: Colors.orange,
                                    ),
                                  ),
                                  const Spacer(),
                                  const Text(
                                    "\$24",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                  )
                                ],
                              )
                            ],
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
          Center(
            child: Text("$homeIndex"),
          ),
          Center(
            child: Text("$homeIndex"),
          ),
          Center(
            child: Text("$homeIndex"),
          ),
          Center(
            child: Text("$homeIndex"),
          ),
          Center(
            child: Text("$homeIndex"),
          ),
        ],
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
                    // ref.read(furnitureMenuIndex.notifier).update((state) => state = 0);
                    setMenuIndex(0);
                  },
                  icon: const Icon(
                    Icons.home_outlined,
                  ),
                  iconSize: 32,
                  color: homeIndex == 0 ? Colors.black : Colors.grey,
                ),
                Container(
                  height: 2,
                  width: 12,
                  color: homeIndex == 0 ? Colors.black : Colors.white,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    setMenuIndex(1);
                  },
                  icon: const Icon(
                    Icons.chair,
                  ),
                  iconSize: 32,
                  color: homeIndex == 1 ? Colors.black : Colors.grey,
                ),
                Container(
                  height: 2,
                  width: 12,
                  color: homeIndex == 1 ? Colors.black : Colors.white,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    setMenuIndex(2);
                  },
                  icon: const Icon(
                    Icons.favorite_border,
                  ),
                  iconSize: 32,
                  color: homeIndex == 2 ? Colors.black : Colors.grey,
                ),
                Container(
                  height: 2,
                  width: 12,
                  color: homeIndex == 2 ? Colors.black : Colors.white,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () => setMenuIndex(3),
                  icon: const Icon(
                    Icons.shopping_cart_outlined,
                  ),
                  iconSize: 32,
                  color: homeIndex == 3 ? Colors.black : Colors.grey,
                ),
                Container(
                  height: 2,
                  width: 12,
                  color: homeIndex == 3 ? Colors.black : Colors.white,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () => setMenuIndex(4),
                  icon: const Icon(
                    Icons.person_2_outlined,
                  ),
                  iconSize: 32,
                  color: homeIndex == 4 ? Colors.black : Colors.grey,
                ),
                Container(
                  height: 2,
                  width: 12,
                  color: homeIndex == 4 ? Colors.black : Colors.white,
                )
              ],
            )
          ],
        ),
      ),
    );
    return Consumer(builder: (context, ref, _) {
      final homeIndex = ref.watch(furnitureMenuIndex);
    });
  }
}
