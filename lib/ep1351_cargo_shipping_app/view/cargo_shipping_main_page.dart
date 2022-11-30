import 'package:flutter/material.dart';

class CargoShippingMainPage extends StatefulWidget {
  const CargoShippingMainPage({Key? key}) : super(key: key);

  @override
  State<CargoShippingMainPage> createState() => _CargoShippingMainPageState();
}

class _CargoShippingMainPageState extends State<CargoShippingMainPage> {
  Color _primaryColor = Color.fromRGBO(19, 3, 58, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cargo"),
        backgroundColor: _primaryColor,
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
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2.5,
              color: Colors.blue,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    child: Container(
                      height: 160,
                      color: _primaryColor,
                      padding: EdgeInsets.only(top: 24, bottom: 24, left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Shipping",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                              Text("Today is Friday - 22 June, 2022"),
                            ],
                          ),
                          CircleAvatar()
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
