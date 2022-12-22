import 'package:flutter/material.dart';

class FurnitureDetailPage extends StatefulWidget {
  const FurnitureDetailPage({Key? key}) : super(key: key);

  @override
  State<FurnitureDetailPage> createState() => _FurnitureDetailPageState();
}

class _FurnitureDetailPageState extends State<FurnitureDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
