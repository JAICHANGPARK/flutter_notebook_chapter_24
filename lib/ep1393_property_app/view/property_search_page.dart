import 'package:flutter/material.dart';

class PropertySearchResultPage extends StatefulWidget {
  const PropertySearchResultPage({Key? key}) : super(key: key);

  @override
  State<PropertySearchResultPage> createState() => _PropertySearchResultPageState();
}

class _PropertySearchResultPageState extends State<PropertySearchResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 52,
                  width: 52,
                  decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                    BoxShadow(
                      color: Colors.grey[200]!,
                      spreadRadius: 2,
                      blurRadius: 2
                    )
                  ]),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
