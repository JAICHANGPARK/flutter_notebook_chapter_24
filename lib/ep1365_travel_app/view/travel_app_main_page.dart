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
          ),
          Positioned(
            left: 0,
            top: 72,
            bottom: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Hello,Dream"),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  "Dreaming of your next trip?",
                                  style: TextStyle(
                                    fontSize: 34,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Container(
                            height: 64,
                            width: 64,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Container(
                        height: 400,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    padding: EdgeInsets.only(left: 16, right: 0, top: 12),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Hot Deals",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "All",
                              style: TextStyle(
                                color: Colors.orange,
                              ),
                            ),
                            PopupMenuButton(
                              itemBuilder: (context) {
                                return [
                                  const PopupMenuItem<String>(
                                    value: "All",
                                    child: Text('All'),
                                  ),
                                  const PopupMenuItem<String>(
                                    value: "1",
                                    child: Text('1'),
                                  ),
                                  const PopupMenuItem<String>(
                                    value: "2",
                                    child: Text('2'),
                                  )
                                ];
                              },
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.orange,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 80,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 5,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(4),
                          bottomLeft: Radius.circular(4),
                        ),
                      ),
                    ),
                    const Icon(Icons.home_filled),
                    const Text("Home"),
                  ],
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 5,
                      decoration: const BoxDecoration(
                        // color: Colors.black,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(4),
                          bottomLeft: Radius.circular(4),
                        ),
                      ),
                    ),
                    const Icon(Icons.favorite_border),
                    const Text("Saved"),
                  ],
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 5,
                      decoration: const BoxDecoration(
                        // color: Colors.black,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(4),
                          bottomLeft: Radius.circular(4),
                        ),
                      ),
                    ),
                    const Icon(Icons.card_giftcard),
                    const Text("Booked"),
                  ],
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 5,
                      decoration: const BoxDecoration(
                        // color: Colors.black,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(4),
                          bottomLeft: Radius.circular(4),
                        ),
                      ),
                    ),
                    const Icon(Icons.perm_identity),
                    const Text("Profile"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
