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
                            CircleAvatar(),
                            SizedBox(
                              width: 16,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Dream Walker"),
                                Row(
                                  children: [
                                    Text("Realtor"),
                                    Text("Sonama County, CA"),
                                  ],
                                ),
                              ],
                            ),
                            Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.teal,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              child: Text(
                                "Property",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                        Text("Dreamwalker listed a"),
                        Row(
                          children: [
                            Text(
                              "Property",
                              style: TextStyle(
                                backgroundColor: Colors.teal[100],
                                color: Colors.teal,
                              ),
                            ),
                            Text("in"),
                          ],
                        ),
                        Text("Windsor, CA"),
                        Text("Posted 11 days ago"),
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
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                        IconButton(onPressed: () {}, icon: Icon(Icons.forward)),
                        IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                        IconButton(onPressed: () {}, icon: Icon(Icons.bookmark)),
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
