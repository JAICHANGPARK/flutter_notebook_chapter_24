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
      bottomNavigationBar: BottomAppBar(
        height: 72,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            ),
            Expanded(
              child: Row(
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
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Ionicons.home_outline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
