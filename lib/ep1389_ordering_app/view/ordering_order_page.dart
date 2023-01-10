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
                    height: 160,
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
                                          Text.rich(TextSpan(children: [
                                            TextSpan(
                                              text: "by",
                                            ),
                                            TextSpan(
                                              text: "Dreamwalker",
                                            )
                                          ]))
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Divider(),
                            Container(
                              width: 140,
                              height: 40,
                              color: Colors.pink,
                              child: Stack(
                                children: [
                                  Positioned(
                                    child: CircleAvatar(),
                                    left: 0,
                                    bottom: 0,
                                    top: 0,
                                  ),
                                  Positioned(
                                    child: CircleAvatar(
                                      backgroundColor: Colors.yellow,
                                    ),
                                    left: 30,
                                    bottom: 0,
                                    top: 0,
                                  ),
                                  Positioned(
                                    child: CircleAvatar(
                                      backgroundColor: Colors.orange,
                                    ),
                                    left: 60,
                                    bottom: 0,
                                    top: 0,
                                  ),
                                  Positioned(
                                    child: CircleAvatar(
                                      backgroundColor: Colors.blue,
                                    ),
                                    left: 90,
                                    bottom: 0,
                                    top: 0,
                                  )
                                ],
                              ),
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
