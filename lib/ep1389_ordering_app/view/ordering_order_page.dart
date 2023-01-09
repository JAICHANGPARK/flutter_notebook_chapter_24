import 'package:flutter/material.dart';

class OrderingOrderPage extends StatefulWidget {
  const OrderingOrderPage({Key? key}) : super(key: key);

  @override
  State<OrderingOrderPage> createState() => _OrderingOrderPageState();
}

class _OrderingOrderPageState extends State<OrderingOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 52,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Center(
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Search your order",
                  suffixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Your orders",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Container(
                    height: 160,
                    margin: EdgeInsets.symmetric(vertical: 16),
                    child: Card(
                      child: Center(),
                    ),
                  ),
                  Container(
                    height: 400,
                    margin: EdgeInsets.only(bottom: 16),
                    child: Card(
                      child: Center(),
                    ),
                  ),
                  Container(
                    height: 400,
                    margin: EdgeInsets.only(bottom: 16),
                    child: Card(
                      child: Center(),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
