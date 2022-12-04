import 'package:flutter/material.dart';

class RealEstatePropertyHomeScreen extends StatefulWidget {
  const RealEstatePropertyHomeScreen({Key? key}) : super(key: key);

  @override
  State<RealEstatePropertyHomeScreen> createState() => _RealEstatePropertyHomeScreenState();
}

class _RealEstatePropertyHomeScreenState extends State<RealEstatePropertyHomeScreen> {
  int _menuIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.fromLTRB(8, 8, 8, 4),
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
              color: Colors.teal[50],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Stack(
              children: [
                Positioned(
                    left: 16,
                    right: 16,
                    bottom: 16,
                    top: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(),
                            const SizedBox(
                              width: 16,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Dream Walker"),
                                Row(
                                  children: [
                                    const Text("Realtor"),
                                    const Text("Sonama County, CA"),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.teal,
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              child: const Text(
                                "Property",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const Text(
                          "Dreamwalker listed a",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 32,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "property",
                              style: TextStyle(
                                backgroundColor: Colors.teal[100],
                                color: Colors.teal,
                                fontWeight: FontWeight.w900,
                                fontSize: 38,
                              ),
                            ),
                            const Text(
                              " in",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 38,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Windsor, CA",
                          style: TextStyle(
                            backgroundColor: Colors.teal[100],
                            color: Colors.teal,
                            fontWeight: FontWeight.w900,
                            fontSize: 38,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 16,
                          ),
                          child: Text(
                            "Posted 11 days ago",
                          ),
                        ),
                        Expanded(
                          child: GridView.count(
                            crossAxisCount: 2,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8,
                            children: [
                              Container(
                                color: Colors.blueGrey,
                              ),
                              Container(
                                color: Colors.blueGrey,
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      gradient: LinearGradient(
                        colors: [
                          Colors.white,
                          Colors.white,
                          Colors.white.withOpacity(0.6),
                          Colors.white.withOpacity(0.2),
                        ],
                        stops: [0, 0.5, 0.8, 1],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
                        IconButton(onPressed: () {}, icon: const Icon(Icons.forward)),
                        IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
                        IconButton(onPressed: () {}, icon: const Icon(Icons.bookmark)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: _menuIndex,
        onTap: (idx) => setState(() => _menuIndex = idx),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.apps_outlined,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: "Mail",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_box,
            ),
            label: "Mail",
          )
        ],
      ),
    );
  }
}
