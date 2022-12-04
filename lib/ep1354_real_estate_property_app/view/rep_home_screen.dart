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
      backgroundColor: Colors.grey,
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.fromLTRB(8, 8, 8, 4),
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
              color: Colors.teal[50],
              borderRadius: BorderRadius.circular(16),
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
