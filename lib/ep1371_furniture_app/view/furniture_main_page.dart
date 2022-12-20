import 'package:flutter/material.dart';

class FurnitureMainPage extends StatefulWidget {
  const FurnitureMainPage({Key? key}) : super(key: key);

  @override
  State<FurnitureMainPage> createState() => _FurnitureMainPageState();
}

class _FurnitureMainPageState extends State<FurnitureMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("All Product"),
        titleTextStyle: const TextStyle(
          fontSize: 30,
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.filter_alt_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
        ],
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
    );
  }
}
