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
            icon: const Icon(
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
          const Text("Cottages Sofa"),
          const Text("Stock: 21"),
          Row(
            children: [
              Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8)),
              ),
              Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8)),
              ),
              Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8)),
              )
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(24),
            ),
            child: const Text("Details"),
          ),
          Container(
            height: 140,
            decoration: BoxDecoration(
              color: Colors.purple[200],
            ),
          ),
          Container(
            height: 54,
            decoration: const ShapeDecoration(
              shape: StadiumBorder(),
              color: Colors.black,
            ),
            child: const Center(
              child: Text(
                "Add to Chart",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
