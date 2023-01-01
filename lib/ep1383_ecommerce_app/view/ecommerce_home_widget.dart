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
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              Text(
                "Shofun",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart_outlined,
                ),
              ),
              Badge(
                child: Icon(
                  Icons.notifications_none,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 54,
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
          margin: EdgeInsets.only(left: 16, bottom: 16, top: 16),
          height: 100,
          color: Colors.pink,
          child: ListView(),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 140,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("New Collection"),
                    TextButton(
                      onPressed: () {},
                      child: Text("See all"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

      ],
    );
  }
}
