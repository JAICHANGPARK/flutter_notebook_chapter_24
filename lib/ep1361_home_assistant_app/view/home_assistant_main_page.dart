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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Favorites",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 72,
        color: Colors.black,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
              color: Colors.white,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
              icon: Icon(
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
