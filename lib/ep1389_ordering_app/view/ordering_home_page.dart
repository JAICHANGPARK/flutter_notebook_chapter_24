import 'package:flutter/material.dart';

class OrderingHomePage extends StatefulWidget {
  const OrderingHomePage({Key? key}) : super(key: key);

  @override
  State<OrderingHomePage> createState() => _OrderingHomePageState();
}

class _OrderingHomePageState extends State<OrderingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
          height: 54,
          margin: const EdgeInsets.fromLTRB(16, 8, 16, 24),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(6),
          ),
          padding: const EdgeInsets.only(left: 16),
          child: const Center(
            child: TextField(
              decoration: InputDecoration(
                hintText: "boneless chicken breast",
                border: InputBorder.none,
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
        ),
        Container(
          height: 120,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "Featured offers",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
        Container(
          height: 200,
          color: Colors.red,
          margin: const EdgeInsets.only(left: 16),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  width: 200,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                );
              }),
        )
      ],
    );
  }
}
