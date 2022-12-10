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
                color: Colors.orange,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            child: const Placeholder(),
                          ),
                          const Expanded(
                            child: Placeholder(),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const Expanded(
                            child: Placeholder(),
                          ),
                          Container(
                            height: 100,
                            child: const Placeholder(),
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
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
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
