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
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
            ),
            color: Colors.red,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            color: Colors.blue,
          ),
          Text("Cottages Sofa"),
          Text("Stock: 21"),
          Row(
            children: [
              Container(
                height: 38,
                width: 38,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8)
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
