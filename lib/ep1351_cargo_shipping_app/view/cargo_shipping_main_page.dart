import 'package:flutter/material.dart';

class CargoShippingMainPage extends StatefulWidget {
  const CargoShippingMainPage({Key? key}) : super(key: key);

  @override
  State<CargoShippingMainPage> createState() => _CargoShippingMainPageState();
}

class _CargoShippingMainPageState extends State<CargoShippingMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cargo"),
        backgroundColor: Color.fromRGBO(19, 3, 58, 1),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
