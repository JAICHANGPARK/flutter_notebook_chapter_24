import 'package:flutter/material.dart';

class FashionECommerceMainPage extends StatefulWidget {
  const FashionECommerceMainPage({Key? key}) : super(key: key);

  @override
  State<FashionECommerceMainPage> createState() => _FashionECommerceMainPageState();
}

class _FashionECommerceMainPageState extends State<FashionECommerceMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                left: 16,
                right: 16,
                top: 0,
                child: Container(
                  height: 64,
                ))
          ],
        ),
      ),
    );
  }
}
