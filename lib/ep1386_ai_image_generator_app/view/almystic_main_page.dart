import 'package:flutter/material.dart';

class AlmysticMainPage extends StatefulWidget {
  const AlmysticMainPage({Key? key}) : super(key: key);

  @override
  State<AlmysticMainPage> createState() => _AlmysticMainPageState();
}

class _AlmysticMainPageState extends State<AlmysticMainPage> {
  int _index = 0;
  List<String> _menuItems = ["All", "Video", "Drafts", "Picture", "Interface", "Flutter"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(26, 28, 34, 1),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 16, 8, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Discover",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: Color.fromRGBO(62, 69, 83, 1),
                    foregroundColor: Colors.white,
                    child: Icon(Icons.search),
                  )
                ],
              ),
            ),
            Container(
              height: 72,
              margin: const EdgeInsets.only(left: 8),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Column(
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                const CircleAvatar(
                                  radius: 24,
                                ),
                                index % 3 == 0
                                    ? Positioned(
                                        right: 0,
                                        bottom: 0,
                                        child: Container(
                                          height: 16,
                                          width: 16,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(color: Colors.black, width: 2),
                                              color: Colors.green),
                                        ))
                                    : Container()
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            index % 2 == 0 ? "Dream" : "Walker",
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            const Divider(
              color: Colors.white,
              height: 48,
              indent: 8,
              endIndent: 8,
            ),
            Container(
              margin: const EdgeInsets.only(left: 16),
              height: 32,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _menuItems.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 12),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(62, 69, 83, 1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Text(
                          "${_menuItems[index]}",
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.only(left: 8, top: 16, bottom: 24),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(),
                          const SizedBox(
                            width: 8,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Dreamwalker",
                                style: TextStyle(
                                  color: Colors.green,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const Text(
                                'Flutter Developer',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2022/12/03/12/28/background-7632590_960_720.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(7)),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 16),
                        height: 48,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.only(right: 16),
                              padding: const EdgeInsets.symmetric(horizontal: 12),
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(62, 69, 83, 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Center(
                                child: Text(
                                  "✨ Make Variations",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const Divider(
                        color: Colors.white,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(62, 69, 83, 1),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            margin: EdgeInsets.only(right: 12),
                            padding: EdgeInsets.all(12),
                            child: Center(
                              child: Text(
                                "U1",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(62, 69, 83, 1),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            margin: EdgeInsets.only(right: 12),
                            padding: EdgeInsets.all(12),
                            child: Center(
                              child: Text(
                                "U2",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(62, 69, 83, 1),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            margin: EdgeInsets.only(right: 12),
                            padding: EdgeInsets.all(12),
                            child: Center(
                              child: Text(
                                "U3",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(62, 69, 83, 1),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            margin: EdgeInsets.only(right: 12),
                            padding: EdgeInsets.all(12),
                            child: Center(
                              child: Text(
                                "U4",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(62, 69, 83, 1),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            margin: EdgeInsets.only(right: 12),
                            padding: EdgeInsets.all(12),
                            child: Center(
                              child: Icon(
                                Icons.refresh,
                                color: Colors.blue, size: 18,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(62, 69, 83, 1),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            margin: EdgeInsets.only(right: 12),
                            padding: EdgeInsets.all(12),
                            child: Center(
                                child: Icon(
                              Icons.download,
                                  size: 18,
                            )),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(85, 99, 249, 1),
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromRGBO(35, 36, 42, 1),
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: Container(
          height: 80,
          child: Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Container(
                        height: 3,
                        width: 32,
                        decoration: BoxDecoration(
                          color: _index == 1 ? Colors.blue : Colors.transparent,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _index = 1;
                          });
                        },
                        icon: const Icon(Icons.home_outlined),
                        color: _index == 1 ? Colors.blue : Colors.grey,
                        iconSize: 32,
                      )
                    ],
                  )),
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Container(
                        height: 3,
                        width: 32,
                        decoration: BoxDecoration(
                          color: _index == 2 ? Colors.blue : Colors.transparent,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _index = 2;
                          });
                        },
                        icon: const Icon(Icons.explore_outlined),
                        color: _index == 2 ? Colors.blue : Colors.grey,
                        iconSize: 32,
                      )
                    ],
                  )),
              Expanded(flex: 2, child: Container()),
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Container(
                        height: 3,
                        width: 32,
                        decoration: BoxDecoration(
                          color: _index == 3 ? Colors.blue : Colors.transparent,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _index = 3;
                          });
                        },
                        icon: const Icon(Icons.folder_copy_outlined),
                        color: _index == 3 ? Colors.blue : Colors.grey,
                        iconSize: 32,
                      )
                    ],
                  )),
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Container(
                        height: 3,
                        width: 32,
                        decoration: BoxDecoration(
                          color: _index == 4 ? Colors.blue : Colors.transparent,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _index = 4;
                          });
                        },
                        icon: const Icon(Icons.person_2_outlined),
                        color: _index == 4 ? Colors.blue : Colors.grey,
                        iconSize: 32,
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
