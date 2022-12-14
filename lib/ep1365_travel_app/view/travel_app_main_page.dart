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
                            height: 42,
                            width: 42,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Icon(
                              Icons.notifications_none,
                            ),
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
                    padding: const EdgeInsets.only(left: 16, right: 0, top: 12),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Hot Deals",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                            const Spacer(),
                            const Text(
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
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.orange,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 260,
                                margin: EdgeInsets.only(right: 16),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: Colors.grey[300]!,
                                )),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Image.network(
                                        "https://cdn.pixabay.com/photo/2019/09/05/15/25/airbus-4454338_960_720.jpg",
                                        fit: BoxFit.cover,
                                        height: double.infinity,
                                      ),
                                    ),
                                    Expanded(
                                        child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text("Only for Credit,"),
                                          Text("Card"),
                                          Text("Up to 30% Discount On Hotel Booking")
                                        ],
                                      ),
                                    ))
                                  ],
                                ),
                              );
                            },
                          ),
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
