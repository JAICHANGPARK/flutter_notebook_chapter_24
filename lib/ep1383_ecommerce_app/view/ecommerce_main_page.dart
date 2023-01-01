import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_24/ep1383_ecommerce_app/view/ecommerce_home_widget.dart';

class EcommerceMainPage extends StatefulWidget {
  const EcommerceMainPage({Key? key}) : super(key: key);

  @override
  State<EcommerceMainPage> createState() => _EcommerceMainPageState();
}

class _EcommerceMainPageState extends State<EcommerceMainPage> {
  int _menuIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _menuIndex,
          children:  [
            EcommerceHomeWidget(),
            Center(child: Text(_menuIndex.toString()),),
            Center(child: Text(_menuIndex.toString()),),
            Center(child: Text(_menuIndex.toString()),)
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xFFFF7800),
          unselectedItemColor: Colors.grey,
          currentIndex: _menuIndex,
          onTap: (idx) {
            setState(() {
              _menuIndex = idx;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.thumb_up),
              label: "For you",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet),
              label: "Wallet",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Collection",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            )
          ],
        ),
      ),
    );
  }
}
