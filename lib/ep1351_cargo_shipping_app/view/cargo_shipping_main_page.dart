import 'package:flutter/material.dart';

class CargoShippingMainPage extends StatefulWidget {
  const CargoShippingMainPage({Key? key}) : super(key: key);

  @override
  State<CargoShippingMainPage> createState() => _CargoShippingMainPageState();
}

class _CargoShippingMainPageState extends State<CargoShippingMainPage> {
  Color _primaryColor = const Color.fromRGBO(19, 3, 58, 1);
  Color _secondaryColor = const Color.fromRGBO(154, 134, 200, 1);
  Color _accentColor = const Color.fromRGBO(103, 40, 255, 1);

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
              height: MediaQuery.of(context).size.height / 2.2,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    child: Container(
                      height: 160,
                      color: _primaryColor,
                      padding: const EdgeInsets.only(top: 0, bottom: 24, left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Shipping",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Text(
                                "Today is Friday - 22 June, 2022",
                                style: TextStyle(
                                  color: _secondaryColor,
                                ),
                              ),
                            ],
                          ),
                          CircleAvatar(
                            radius: 28,
                            foregroundColor: Colors.white,
                            backgroundColor: _accentColor,
                            child: const Icon(
                              Icons.add,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    bottom: 16,
                    right: 16,
                    top: 120,
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 4,
                      mainAxisSpacing: 4,
                      childAspectRatio: 1.5,
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Total\nShipments",
                                      maxLines: 2,
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.grey[200],
                                      foregroundColor: _primaryColor,
                                      child: const Icon(Icons.indeterminate_check_box_sharp),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      "6,628",
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Icon(
                                      Icons.arrow_drop_up,
                                      color: Colors.green,
                                    ),
                                    const Text(
                                      "+1.8%",
                                      style: TextStyle(
                                        color: Colors.green,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        const Card(),
                        const Card(),
                        const Card(),
                      ],
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
