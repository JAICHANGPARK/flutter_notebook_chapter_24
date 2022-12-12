import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HomeAssistantMainPage extends StatefulWidget {
  const HomeAssistantMainPage({Key? key}) : super(key: key);

  @override
  State<HomeAssistantMainPage> createState() => _HomeAssistantMainPageState();
}

class _HomeAssistantMainPageState extends State<HomeAssistantMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Favorites",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16),
                height: MediaQuery.of(context).size.height / 2.2,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 84,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromRGBO(30, 30, 30, 1),
                                  Color.fromRGBO(30, 30, 30, 1),
                                  Color.fromRGBO(24, 24, 24, 1),
                                  Color.fromRGBO(24, 24, 24, 1),
                                  Color.fromRGBO(21, 21, 21, 1),
                                  Color.fromRGBO(21, 21, 21, 1),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "All lights",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 16),
                                  height: 64,
                                  width: 64,
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Stack(
                                    children: [
                                      Transform.rotate(
                                        angle: 24 * (180 / pi),
                                        child: Column(
                                          children: [
                                            Expanded(child: Container()),
                                            Expanded(
                                              child: Container(
                                                decoration: const BoxDecoration(
                                                  color: Color.fromRGBO(40, 40, 40, 1),
                                                  borderRadius: BorderRadius.only(
                                                    bottomRight: Radius.circular(36),
                                                    bottomLeft: Radius.circular(36),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Center(
                                        child: Icon(
                                          Icons.light_mode,
                                          color: Colors.orange,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color.fromRGBO(30, 30, 30, 1),
                                    Color.fromRGBO(30, 30, 30, 1),
                                    Color.fromRGBO(24, 24, 24, 1),
                                    Color.fromRGBO(21, 21, 21, 1),
                                    Color.fromRGBO(21, 21, 21, 1),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                              padding: EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "LIVING ROOM",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "Top light",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 16,
                                        ),
                                        CircleAvatar(
                                          backgroundColor: Colors.white,
                                          foregroundColor: Colors.orange,
                                          radius: 28,
                                          child: Icon(
                                            Icons.lightbulb,
                                            size: 28,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "Side light",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 16,
                                        ),
                                        CircleAvatar(
                                          backgroundColor: Colors.black,
                                          foregroundColor: Colors.grey,
                                          radius: 28,
                                          child: Icon(
                                            Icons.light,
                                            size: 28,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "Soft light",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 16,
                                        ),
                                        CircleAvatar(
                                          backgroundColor: Colors.black,
                                          foregroundColor: Colors.grey,
                                          radius: 28,
                                          child: Icon(
                                            Icons.light,
                                            size: 28,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                           Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color.fromRGBO(30, 30, 30, 1),
                                    Color.fromRGBO(30, 30, 30, 1),
                                    Color.fromRGBO(24, 24, 24, 1),
                                    Color.fromRGBO(21, 21, 21, 1),
                                    Color.fromRGBO(21, 21, 21, 1),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                              padding: EdgeInsets.all(16),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 84,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromRGBO(30, 30, 30, 1),
                                  Color.fromRGBO(30, 30, 30, 1),
                                  Color.fromRGBO(24, 24, 24, 1),
                                  Color.fromRGBO(24, 24, 24, 1),
                                  Color.fromRGBO(21, 21, 21, 1),
                                  Color.fromRGBO(21, 21, 21, 1),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "ENTRANCE",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      "lights",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 16),
                                  height: 64,
                                  width: 64,
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const CircleAvatar(
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.orange,
                                    child: Icon(
                                      Icons.lightbulb,
                                      size: 28,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 12, bottom: 12),
                height: 84,
                color: Colors.grey,
              ),
              Container(
                height: 84,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 72,
        color: Colors.black,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
              color: Colors.white,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    child: Icon(
                      Icons.home_filled,
                      size: 12,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "At home",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Ionicons.home_outline,
              ),
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
