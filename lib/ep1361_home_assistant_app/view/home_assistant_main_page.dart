import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeAssistantMainPage extends StatefulWidget {
  const HomeAssistantMainPage({Key? key}) : super(key: key);

  @override
  State<HomeAssistantMainPage> createState() => _HomeAssistantMainPageState();
}

class _HomeAssistantMainPageState extends State<HomeAssistantMainPage> {
  double _meterHeight = 4;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 1)).then(
      (value) => setState(
        () {
          _meterHeight = 84.0;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Favorites",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16),
                height: MediaQuery.of(context).size.height / 2.2,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 84,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromRGBO(30, 30, 30, 1),
                                  Color.fromRGBO(30, 30, 30, 1),
                                  Color.fromRGBO(24, 24, 24, 1),
                                  Color.fromRGBO(24, 24, 24, 1),
                                  Color.fromRGBO(21, 21, 21, 1),
                                  Color.fromRGBO(21, 21, 21, 1),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "All lights",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 16),
                                  height: 64,
                                  width: 64,
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Stack(
                                    children: [
                                      Transform.rotate(
                                        angle: 24 * (180 / pi),
                                        child: Column(
                                          children: [
                                            Expanded(child: Container()),
                                            Expanded(
                                              child: Container(
                                                decoration: const BoxDecoration(
                                                  color: Color.fromRGBO(40, 40, 40, 1),
                                                  borderRadius: BorderRadius.only(
                                                    bottomRight: Radius.circular(36),
                                                    bottomLeft: Radius.circular(36),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Center(
                                        child: Icon(
                                          Icons.light_mode,
                                          color: Colors.orange,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color.fromRGBO(30, 30, 30, 1),
                                    Color.fromRGBO(30, 30, 30, 1),
                                    Color.fromRGBO(24, 24, 24, 1),
                                    Color.fromRGBO(21, 21, 21, 1),
                                    Color.fromRGBO(21, 21, 21, 1),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "LIVING ROOM",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "Top light",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 16,
                                        ),
                                        CircleAvatar(
                                          backgroundColor: Colors.white,
                                          foregroundColor: Colors.orange,
                                          radius: 28,
                                          child: Icon(
                                            Icons.lightbulb,
                                            size: 28,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "Side light",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 16,
                                        ),
                                        CircleAvatar(
                                          backgroundColor: Colors.black,
                                          foregroundColor: Colors.grey,
                                          radius: 28,
                                          child: Icon(
                                            Icons.light,
                                            size: 28,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "Soft light",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 16,
                                        ),
                                        CircleAvatar(
                                          backgroundColor: Colors.black,
                                          foregroundColor: Colors.grey,
                                          radius: 28,
                                          child: Icon(
                                            Icons.light,
                                            size: 28,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color.fromRGBO(30, 30, 30, 1),
                                    Color.fromRGBO(30, 30, 30, 1),
                                    Color.fromRGBO(24, 24, 24, 1),
                                    Color.fromRGBO(21, 21, 21, 1),
                                    Color.fromRGBO(21, 21, 21, 1),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "HOME ELECTRICITY",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: const Color.fromRGBO(51, 51, 51, 1),
                                                    borderRadius: BorderRadius.circular(8),
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      AnimatedPositioned(
                                                        left: 4,
                                                        right: 4,
                                                        bottom: 4,
                                                        top: _meterHeight,
                                                        duration: const Duration(milliseconds: 350),
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                            color: Colors.grey,
                                                            borderRadius: BorderRadius.circular(4),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 0,
                                                        right: 0,
                                                        top: 8,
                                                        child: Column(
                                                          children: const [
                                                            Icon(
                                                              Icons.power,
                                                              color: Colors.green,
                                                            ),
                                                            SizedBox(
                                                              height: 6,
                                                            ),
                                                            Text(
                                                              "5kW/h",
                                                              style: TextStyle(
                                                                color: Colors.white,
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 16,
                                              ),
                                              const Text(
                                                "Meter",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Expanded(
                                            child: Column(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: const Color.fromRGBO(51, 51, 51, 1),
                                                  borderRadius: BorderRadius.circular(8),
                                                ),
                                                child: Stack(
                                                  children: [
                                                    AnimatedPositioned(
                                                      left: 4,
                                                      right: 4,
                                                      bottom: 4,
                                                      top: 4,
                                                      duration: const Duration(milliseconds: 250),
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                          color: Colors.grey,
                                                          borderRadius: BorderRadius.circular(4),
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: 0,
                                                      right: 0,
                                                      top: 8,
                                                      child: Column(
                                                        children: const [
                                                          Icon(
                                                            Icons.solar_power,
                                                            color: Colors.white,
                                                          ),
                                                          SizedBox(
                                                            height: 6,
                                                          ),
                                                          Text(
                                                            "8kW/h",
                                                            style: TextStyle(
                                                              color: Colors.white,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 16,
                                            ),
                                            const Text(
                                              "PV",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            )
                                          ],
                                        )),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 84,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromRGBO(30, 30, 30, 1),
                                  Color.fromRGBO(30, 30, 30, 1),
                                  Color.fromRGBO(24, 24, 24, 1),
                                  Color.fromRGBO(24, 24, 24, 1),
                                  Color.fromRGBO(21, 21, 21, 1),
                                  Color.fromRGBO(21, 21, 21, 1),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "ENTRANCE",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      "lights",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 16),
                                  height: 64,
                                  width: 64,
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const CircleAvatar(
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.orange,
                                    child: Icon(
                                      Icons.lightbulb,
                                      size: 28,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 12, bottom: 12),
                height: 84,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(6),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromRGBO(30, 30, 30, 1),
                      Color.fromRGBO(30, 30, 30, 1),
                      Color.fromRGBO(24, 24, 24, 1),
                      Color.fromRGBO(24, 24, 24, 1),
                      Color.fromRGBO(21, 21, 21, 1),
                      Color.fromRGBO(21, 21, 21, 1),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 4,
                      top: 4,
                      bottom: 4,
                      right: 100,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(50, 50, 50, 1),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 16,
                      top: 12,
                      bottom: 12,
                      right: 16,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.cloudy_snowing,
                            color: Colors.lightBlueAccent,
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Air Conditioner",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "COOL TO 18°",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Text(
                            "20°",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 24,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 84,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(6),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromRGBO(30, 30, 30, 1),
                      Color.fromRGBO(30, 30, 30, 1),
                      Color.fromRGBO(24, 24, 24, 1),
                      Color.fromRGBO(24, 24, 24, 1),
                      Color.fromRGBO(21, 21, 21, 1),
                      Color.fromRGBO(21, 21, 21, 1),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Stack(
                  children: [
                    // Positioned(
                    //   left: 4,
                    //   top: 4,
                    //   bottom: 4,
                    //   right: 0,
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //       color: const Color.fromRGBO(50, 50, 50, 1),
                    //       borderRadius: BorderRadius.circular(4),
                    //     ),
                    //   ),
                    // ),
                    Positioned(
                      left: 16,
                      top: 8,
                      bottom: 8,
                      right: 16,
                      child: Row(
                        children: [
                          // const Icon(
                          //   Icons.cloudy_snowing,
                          //   color: Colors.lightBlueAccent,
                          // ),
                          CircularPercentIndicator(
                            radius: 30,
                            percent: 0.4,
                            progressColor: Colors.green,
                            lineWidth: 2.5,
                            backgroundColor: Colors.black,
                            center: const Center(
                              child: Icon(
                                Icons.flash_on,
                                color: Colors.green,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Car Charger",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "BATTERY: 64%",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const CircleAvatar(
                            radius: 24,
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.grey,
                            child: Icon(Icons.power_settings_new),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 72,
        color: Colors.black,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
              color: Colors.white,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    child: Icon(
                      Icons.home_filled,
                      size: 12,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "At home",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Ionicons.home_outline,
              ),
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
