import 'package:flutter/material.dart';

class OrderingHomePage extends StatefulWidget {
  const OrderingHomePage({Key? key}) : super(key: key);

  @override
  State<OrderingHomePage> createState() => _OrderingHomePageState();
}

class _OrderingHomePageState extends State<OrderingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Icon(
                Icons.location_on,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "My location",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "464 Royal Mesa, New Jersey",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            const Spacer(),
            Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Center(
                child: Badge(
                  child: Icon(
                    Icons.shopping_bag_outlined,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        height: 64,
        margin: EdgeInsets.fromLTRB(16, 8, 16, 24),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(6),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: "boneless chicken breast",
            border: InputBorder.none,
          ),
        ),
      )
    ]);
  }
}
