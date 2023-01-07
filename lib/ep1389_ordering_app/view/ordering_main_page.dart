import 'package:flutter/material.dart';

class OrderingMainPage extends StatefulWidget {
  const OrderingMainPage({Key? key}) : super(key: key);

  @override
  State<OrderingMainPage> createState() => _OrderingMainPageState();
}

class _OrderingMainPageState extends State<OrderingMainPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _selectedIndex,
          children: [],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: "Orders",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: "Messages",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "Accounts",
          ),

        ],
      ),
    );
  }
}
