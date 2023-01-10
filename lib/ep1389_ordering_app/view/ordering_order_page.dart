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
                                const SizedBox(
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
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                          ),
                                          Text(
                                            "ACTIVE",
                                            style: TextStyle(
                                              color: Colors.green,
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
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
                            const Divider(
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
                                const Text(
                                  "7 items",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                const Spacer(),
                                const Text(
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
                    margin: const EdgeInsets.only(bottom: 16),
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
                                const SizedBox(
                                  width: 12,
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            "Order #178990",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
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
                                      const SizedBox(
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
                            const Divider(
                              height: 24,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text("3 items"),
                                Text(
                                  "\$512.00",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(4),
                              ),
                              margin: const EdgeInsets.only(top: 8),
                              child: Row(
                                children: [
                                  const CircleAvatar(),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Fresh Sirloin Fillet Steak",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "6kg - Arizona Meat",
                                        style: TextStyle(color: Colors.grey, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  const Text(
                                    "\$219.00",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(4),
                              ),
                              margin: const EdgeInsets.only(top: 8),
                              child: Row(
                                children: [
                                  const CircleAvatar(),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Fresh Sirloin Fillet Steak",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "6kg - Arizona Meat",
                                        style: TextStyle(color: Colors.grey, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  const Text(
                                    "\$219.00",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(4),
                              ),
                              margin: const EdgeInsets.only(top: 8),
                              child: Row(
                                children: [
                                  const CircleAvatar(),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Fresh Sirloin Fillet Steak",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "6kg - Arizona Meat",
                                        style: TextStyle(color: Colors.grey, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  const Text(
                                    "\$219.00",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 48,
                              margin: const EdgeInsets.symmetric(vertical: 12),
                              decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(4)),
                              child: const Center(
                                child: Text(
                                  "Order again",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
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
                                const SizedBox(
                                  width: 12,
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            "Order #178990",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
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
                                      const SizedBox(
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
                            const Divider(
                              height: 24,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text("3 items"),
                                Text(
                                  "\$512.00",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(4),
                              ),
                              margin: const EdgeInsets.only(top: 8),
                              child: Row(
                                children: [
                                  const CircleAvatar(),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Fresh Sirloin Fillet Steak",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "6kg - Arizona Meat",
                                        style: TextStyle(color: Colors.grey, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  const Text(
                                    "\$219.00",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(4),
                              ),
                              margin: const EdgeInsets.only(top: 8),
                              child: Row(
                                children: [
                                  const CircleAvatar(),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Fresh Sirloin Fillet Steak",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "6kg - Arizona Meat",
                                        style: TextStyle(color: Colors.grey, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  const Text(
                                    "\$219.00",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(4),
                              ),
                              margin: const EdgeInsets.only(top: 8),
                              child: Row(
                                children: [
                                  const CircleAvatar(),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Fresh Sirloin Fillet Steak",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "6kg - Arizona Meat",
                                        style: TextStyle(color: Colors.grey, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  const Text(
                                    "\$219.00",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 48,
                              margin: const EdgeInsets.symmetric(vertical: 12),
                              decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(4)),
                              child: const Center(
                                child: Text(
                                  "Order again",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
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
