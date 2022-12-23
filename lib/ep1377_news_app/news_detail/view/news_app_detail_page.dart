import 'package:flutter/material.dart';

class NewsAppDetailPage extends StatefulWidget {
  const NewsAppDetailPage({Key? key}) : super(key: key);

  @override
  State<NewsAppDetailPage> createState() => _NewsAppDetailPageState();
}

class _NewsAppDetailPageState extends State<NewsAppDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey,
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
