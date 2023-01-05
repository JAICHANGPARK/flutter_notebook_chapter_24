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
              height: 84,
              color: Colors.blue,
              margin: EdgeInsets.only(left: 8),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              CircleAvatar(),
                            ],
                          ),
                        ),
                        Text(
                          index % 2 == 0 ? "Dream" : "Walker",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    );
                  }),
            ),
            Divider(
              color: Colors.white,
              height: 32,
            ),
            Container(
              margin: EdgeInsets.only(left: 16),
              height: 32,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _menuItems.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 16),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration:
                          BoxDecoration(color: Color.fromRGBO(62, 69, 83, 1), borderRadius: BorderRadius.circular(16)),
                      child: Center(
                        child: Text(
                          "${_menuItems[index]}",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  }),
            )
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
