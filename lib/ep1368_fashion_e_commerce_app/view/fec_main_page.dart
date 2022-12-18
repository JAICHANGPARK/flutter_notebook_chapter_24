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
                left: 12,
                right: 12,
                top: 16,
                bottom: 16,
                child: Column(
                  children: [
                    Container(
                      height: 58,
                      color: Colors.purple,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            right: 0,
                            top: 0,
                            bottom: 0,
                            child: Center(
                              child: Container(
                                height: 20,
                                color: Colors.black,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 140,
                            color: Colors.red,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 16),
                            height: 54,
                            color: Colors.green,
                          ),
                          Row(
                            children: [],
                          ),
                          Expanded(
                            child: GridView.count(
                              crossAxisCount: 2,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12,
                              childAspectRatio: 0.6,
                              children: List.generate(
                                10,
                                (index) => Container(
                                  color: Colors.orange,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
            Positioned(
                left: 12,
                right: 12,
                bottom: 24,
                child: Container(
                  height: 72,
                  color: Colors.lightBlue,
                ))
          ],
        ),
      ),
    );
  }
}
