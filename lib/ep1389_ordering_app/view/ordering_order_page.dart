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
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: const Center(
              child: TextField(
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
                    margin: const EdgeInsets.symmetric(vertical: 16),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 52,
                                  width: 52,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            "Order #185874",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "ACTIVE",
                                            style: TextStyle(
                                              color: Colors.green,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text("Fri 21 Aug - 10:21 AM"),
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "by ",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: "Dreamwalker",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              height: 24,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 140,
                                  height: 40,
                                  child: Stack(
                                    children: const [
                                      Positioned(
                                        left: 0,
                                        bottom: 0,
                                        top: 0,
                                        child: CircleAvatar(),
                                      ),
                                      Positioned(
                                        left: 30,
                                        bottom: 0,
                                        top: 0,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.yellow,
                                        ),
                                      ),
                                      Positioned(
                                        left: 60,
                                        bottom: 0,
                                        top: 0,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.orange,
                                        ),
                                      ),
                                      Positioned(
                                        left: 90,
                                        bottom: 0,
                                        top: 0,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.blue,
                                          child: Text("+4"),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Text(
                                  "7 items",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "\$512.00",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 400,
                    margin: const EdgeInsets.only(bottom: 16),
                    child: const Card(
                      child: Center(),
                    ),
                  ),
                  Container(
                    height: 400,
                    margin: const EdgeInsets.only(bottom: 16),
                    child: const Card(
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
