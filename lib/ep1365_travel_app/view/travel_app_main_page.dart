import 'package:flutter/material.dart';

class TravelAppMainPage extends StatefulWidget {
  const TravelAppMainPage({Key? key}) : super(key: key);

  @override
  State<TravelAppMainPage> createState() => _TravelAppMainPageState();
}

class _TravelAppMainPageState extends State<TravelAppMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 0,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blue[100]!,
                  ),
                ),
                Expanded(
                    child: Container(
                  color: Colors.grey[100],
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
