import 'package:flutter/material.dart';

class EcommerceMainPage extends StatefulWidget {
  const EcommerceMainPage({Key? key}) : super(key: key);

  @override
  State<EcommerceMainPage> createState() => _EcommerceMainPageState();
}

class _EcommerceMainPageState extends State<EcommerceMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(

          children: [

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.thumb_up_alt_outlined),
            label: "For you",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.thumb_up_alt_outlined),
            label: "For you",
          )
        ],
      ),
    );
  }
}
