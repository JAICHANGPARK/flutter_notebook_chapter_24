import 'package:flutter/material.dart';

class FashionECommerceMainPage extends StatefulWidget {
  const FashionECommerceMainPage({Key? key}) : super(key: key);

  @override
  State<FashionECommerceMainPage> createState() => _FashionECommerceMainPageState();
}

class _FashionECommerceMainPageState extends State<FashionECommerceMainPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<String> tabItems = ["Woman", "Men", "Kids", "Sports", "New"];
  int _menuIndex = 0;

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
                            child: Stack(
                              children: [
                                Positioned(
                                    left: 24,
                                    top: 16,
                                    bottom: 16,
                                    right: 16,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: const [
                                              Text(
                                                "UP TO",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                              Text(
                                                "75% OFF",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                ),
                                              ),
                                              Text(
                                                "WITH CODE",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                            child: Center(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.black, borderRadius: BorderRadius.circular(8)),
                                            padding: const EdgeInsets.all(16),
                                            child: const Text(
                                              "Get it now",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ))
                                      ],
                                    ))
                              ],
                            ),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Most Popular",
                                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text("See All"),
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: GridView.builder(
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 12,
                                mainAxisSpacing: 12,
                                childAspectRatio: 0.6,
                              ),
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              right: 0,
                                              bottom: 0,
                                              top: 0,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey[200],
                                                  borderRadius: BorderRadius.circular(12),
                                                ),
                                                padding: const EdgeInsets.all(16),
                                                child: Image.network(
                                                    "https://cdn.pixabay.com/photo/2012/04/13/14/55/jacket-32714_960_720.png"),
                                              ),
                                            ),
                                            Positioned(
                                              right: 8,
                                              top: 8,
                                              child: Container(
                                                height: 52,
                                                width: 52,
                                                decoration: BoxDecoration(
                                                  color: Colors.black.withOpacity(0.2),
                                                  shape: BoxShape.circle,
                                                ),
                                                child: IconButton(
                                                  icon: const Icon(
                                                    Icons.favorite,
                                                  ),
                                                  color: Colors.white,
                                                  onPressed: () {},
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                                bottom: 0,
                                                left: 0,
                                                child: Container(
                                                  padding: const EdgeInsets.all(8),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(8),
                                                  ),
                                                  child: Row(
                                                    children: const [
                                                      Icon(
                                                        Icons.star,
                                                        size: 16,
                                                      ),
                                                      SizedBox(
                                                        width: 8,
                                                      ),
                                                      Text("4.9")
                                                    ],
                                                  ),
                                                )),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      const Text(
                                        "Dreamwalker Outer",
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      const Text(
                                        "\$572",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                              // crossAxisCount: 2,
                              // crossAxisSpacing: 12,
                              // mainAxisSpacing: 12,
                              // childAspectRatio: 0.6,
                              // children:
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
                            flex: _menuIndex == 0 ? 3 : 1,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _menuIndex = 0;
                                });
                              },
                              child: Container(
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
                          ),
                          Expanded(
                            flex: _menuIndex == 1 ? 3 : 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(42),
                              ),
                              padding: const EdgeInsets.all(4),
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
                                    onPressed: () {
                                      setState(() {
                                        _menuIndex = 1;
                                      });
                                    },
                                    iconSize: 34,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                              flex: _menuIndex == 2 ? 3 : 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(42),
                                ),
                                padding: const EdgeInsets.all(4),
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
                              flex: _menuIndex == 3 ? 3 : 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(42),
                                ),
                                padding: const EdgeInsets.all(4),
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
