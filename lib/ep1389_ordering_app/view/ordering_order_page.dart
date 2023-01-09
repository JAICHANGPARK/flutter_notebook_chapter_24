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
              color: Colors.grey[200],
            ),
          ),
          SizedBox(height: 16,),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your orders",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
