import 'package:flutter/material.dart';

class RealEstateDetailScreen extends StatefulWidget {
  const RealEstateDetailScreen({Key? key}) : super(key: key);

  @override
  State<RealEstateDetailScreen> createState() => _RealEstateDetailScreenState();
}

class _RealEstateDetailScreenState extends State<RealEstateDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.forward)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.bookmark)),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.cancel))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
