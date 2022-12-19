import 'package:flutter/material.dart';

class FashionECommerceMainPage extends StatefulWidget {
  const FashionECommerceMainPage({Key? key}) : super(key: key);

  @override
  State<FashionECommerceMainPage> createState() => _FashionECommerceMainPageState();
}

class _FashionECommerceMainPageState extends State<FashionECommerceMainPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<String> tabItems = ["Woman", "Men", "Kids", "Sports", "New"];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: tabItems.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                left: 12,
                right: 12,
                top: 16,
                bottom: 16,
                child: Column(
                  children: [
                    Container(
                      height: 48,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 16,
                            right: 16,
                            top: 0,
                            bottom: 0,
                            child: Center(
                              child: Container(
                                height: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Positioned(
                            child: Row(
                              children: [
                                Container(
                                  height: 48,
                                  width: 48,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(32),
                                    ),
                                    padding: const EdgeInsets.symmetric(horizontal: 14),
                                    child: const TextField(
                                      decoration: InputDecoration(
                                        icon: Icon(Icons.search),
                                        hintText: "Holoday Market Discount",
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                                const CircleAvatar(
                                  radius: 24,
                                  backgroundColor: Colors.black,
                                  foregroundColor: Colors.white,
                                  child: Icon(Icons.notifications),
                                ),
                                const CircleAvatar(
                                  radius: 24,
                                  backgroundColor: Colors.black,
                                  foregroundColor: Colors.white,
                                  child: Badge(
                                    child: Icon(Icons.shopping_cart),
                                    smallSize: 8,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 130,
                            decoration: BoxDecoration(
                              color: Colors.lightGreenAccent,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Stack(),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 16),
                            height: 50,
                            child: Stack(
                              children: [
                                Positioned(
                                    child: Center(
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(horizontal: 16),
                                    height: 24,
                                    color: const Color.fromRGBO(0, 70, 174, 1),
                                  ),
                                )),
                                Positioned(
                                  child: Row(
                                    children: [
                                      const CircleAvatar(
                                        radius: 28,
                                        backgroundColor: Color.fromRGBO(0, 70, 174, 1),
                                        foregroundColor: Colors.white,
                                        child: Icon(Icons.filter_alt),
                                      ),
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: const Color.fromRGBO(0, 70, 174, 1),
                                            borderRadius: BorderRadius.circular(32),
                                          ),
                                          padding: const EdgeInsets.only(left: 16),
                                          child: TabBar(
                                            labelColor: const Color.fromRGBO(168, 246, 60, 1),
                                            indicatorColor: const Color.fromRGBO(168, 246, 60, 1),
                                            unselectedLabelColor: Colors.white,
                                            indicatorSize: TabBarIndicatorSize.label,
                                            isScrollable: true,
                                            controller: _tabController,
                                            tabs: tabItems
                                                .map((e) => Tab(
                                                      text: e,
                                                    ))
                                                .toList(),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: [],
                          ),
                          Expanded(
                            child: GridView.count(
                              crossAxisCount: 2,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12,
                              childAspectRatio: 0.6,
                              children: List.generate(
                                10,
                                (index) => Container(
                                  color: Colors.orange,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
            Positioned(
              left: 12,
              right: 12,
              bottom: 24,
              child: Container(
                height: 64,
                color: Colors.lightBlue,
                child: Stack(
                  children: [
                    Positioned(
                      left: 16,
                      right: 16,
                      bottom: 0,
                      top: 0,
                      child: Center(
                        child: Container(
                          color: Colors.black,
                          height: 24,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      top: 0,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              width: 160,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(64),
                              ),
                              padding: const EdgeInsets.all(4),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(168, 246, 60, 1),
                                  borderRadius: BorderRadius.circular(64),
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.home,
                                        size: 38,
                                        color: Color.fromRGBO(0, 70, 174, 1),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "Home",
                                        style: TextStyle(
                                          fontSize: 24,
                                          color: Color.fromRGBO(0, 70, 174, 1),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(42),
                              ),
                              padding: EdgeInsets.all(4),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(42),
                                ),
                                child: Center(
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.favorite,
                                    ),
                                    color: Colors.white,
                                    onPressed: () {},
                                    iconSize: 34,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                              child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(42),
                            ),
                            padding: EdgeInsets.all(4),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(42),
                              ),
                              child: Center(
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.shopping_cart,
                                  ),
                                  color: Colors.white,
                                  onPressed: () {},
                                  iconSize: 34,
                                ),
                              ),
                            ),
                          )),
                          Expanded(
                              child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(42),
                            ),
                            padding: EdgeInsets.all(4),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(42),
                              ),
                              child: Center(
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.person,
                                  ),
                                  color: Colors.white,
                                  onPressed: () {},
                                  iconSize: 34,
                                ),
                              ),
                            ),
                          )),
                          // Expanded(
                          //     child: Container(
                          //   decoration: BoxDecoration(
                          //     color: Colors.black,
                          //     borderRadius: BorderRadius.circular(42),
                          //   ),
                          //   padding: const EdgeInsets.all(4),
                          //   child: Row(
                          //     children: [
                          //
                          //     ],
                          //   ),
                          // ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
