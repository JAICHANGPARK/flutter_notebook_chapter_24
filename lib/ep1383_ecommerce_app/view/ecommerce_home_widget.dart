import 'package:flutter/material.dart';

class EcommerceHomeWidget extends StatefulWidget {
  const EcommerceHomeWidget({Key? key}) : super(key: key);

  @override
  State<EcommerceHomeWidget> createState() => _EcommerceHomeWidgetState();
}

class _EcommerceHomeWidgetState extends State<EcommerceHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              const Text(
                "Shofun",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                ),
              ),
              const Badge(
                child: Icon(
                  Icons.notifications_none,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 54,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(32),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 6,
                spreadRadius: 5,
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 16, bottom: 16, top: 16),
          height: 100,
          color: Colors.pink,
          child: ListView(),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 160,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "New Collection",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text("See all"),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(16, 8, 0, 16),
                  height: 300,
                  color: Colors.pink,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(16, 16, 0, 16),
                  height: 300,
                  color: Colors.pink,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
