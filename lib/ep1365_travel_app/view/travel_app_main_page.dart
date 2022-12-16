import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_24/ep1365_travel_app/enums/enum_flight.dart';

class TravelAppMainPage extends StatefulWidget {
  const TravelAppMainPage({Key? key}) : super(key: key);

  @override
  State<TravelAppMainPage> createState() => _TravelAppMainPageState();
}

class _TravelAppMainPageState extends State<TravelAppMainPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _tabIndex = 0;

  EnumFlight enumFlight = EnumFlight.oneWayTrip;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Hello,Dream"),
                      Container(
                        height: 34,
                        width: 34,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey),
                        ),
                        child: const Icon(
                          Icons.notifications_none,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          right: 48,
                        ),
                        child: Text(
                          "Dreaming of your next trip?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 420,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Container(
                                    height: 64,
                                    color: Colors.blue,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                _tabController.index = 0;
                                              });
                                            },
                                            child: Container(
                                              color: _tabController.index == 0
                                                  ? Colors.white
                                                  : const Color.fromRGBO(
                                                      234,
                                                      245,
                                                      250,
                                                      1,
                                                    ),
                                              child: Center(
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: const [
                                                    Icon(Icons.flight_takeoff),
                                                    SizedBox(
                                                      width: 8,
                                                    ),
                                                    Text("Flight"),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                _tabController.index = 1;
                                              });
                                            },
                                            child: Container(
                                              color: _tabController.index == 1
                                                  ? Colors.white
                                                  : const Color.fromRGBO(
                                                      234,
                                                      245,
                                                      250,
                                                      1,
                                                    ),
                                              child: Center(
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: const [
                                                    Icon(
                                                      Icons.domain,
                                                    ),
                                                    SizedBox(
                                                      width: 8,
                                                    ),
                                                    Text("Hotel"),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                _tabController.index = 2;
                                              });
                                            },
                                            child: Container(
                                              color: _tabController.index == 2
                                                  ? Colors.white
                                                  : const Color.fromRGBO(
                                                      234,
                                                      245,
                                                      250,
                                                      1,
                                                    ),
                                              child: Center(
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: const [
                                                    Icon(
                                                      Icons.event,
                                                    ),
                                                    SizedBox(
                                                      width: 8,
                                                    ),
                                                    Text("Events"),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: TabBarView(
                                      controller: _tabController,
                                      physics: const NeverScrollableScrollPhysics(),
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(16),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Radio<EnumFlight>(
                                                      value: EnumFlight.oneWayTrip,
                                                      groupValue: enumFlight,
                                                      onChanged: (v) {
                                                        setState(() {
                                                          enumFlight = v!;
                                                        });
                                                      }),
                                                  const Text("One Way"),
                                                  Radio<EnumFlight>(
                                                      value: EnumFlight.roundWayTrip,
                                                      groupValue: enumFlight,
                                                      onChanged: (v) {
                                                        setState(() {
                                                          enumFlight = v!;
                                                        });
                                                      }),
                                                  const Text("Round Way"),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  Positioned(
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                            child: TextField(
                                                          decoration: InputDecoration(
                                                            border: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                color: Colors.grey[500]!,
                                                              ),
                                                            ),
                                                            enabledBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                color: Colors.grey[500]!,
                                                              ),
                                                            ),
                                                            focusedBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                color: Colors.grey[500]!,
                                                              ),
                                                            ),
                                                            labelText: "From",
                                                          ),
                                                        )),
                                                        const SizedBox(
                                                          width: 16,
                                                        ),
                                                        Expanded(
                                                            child: TextField(
                                                          decoration: InputDecoration(
                                                            hintText: "To",
                                                            labelText: "To",
                                                            border: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                color: Colors.grey[500]!,
                                                              ),
                                                            ),
                                                            enabledBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                color: Colors.grey[500]!,
                                                              ),
                                                            ),
                                                            focusedBorder: OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                color: Colors.grey[500]!,
                                                              ),
                                                            ),
                                                          ),
                                                        )),
                                                      ],
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 0,
                                                    right: 0,
                                                    bottom: 6,
                                                    top: 6,
                                                    child: Center(
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                          shape: BoxShape.circle,
                                                          border: Border.all(
                                                            color: Colors.grey[500]!,
                                                          ),
                                                          color: Colors.white,
                                                        ),
                                                        child: const Center(
                                                          child: Icon(
                                                            Icons.sync,
                                                            color: Colors.orange,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 16,
                                              ),
                                              Container(
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                        child: TextField(
                                                      decoration: InputDecoration(
                                                        border: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color: Colors.grey[500]!,
                                                          ),
                                                        ),
                                                        enabledBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color: Colors.grey[500]!,
                                                          ),
                                                        ),
                                                        focusedBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color: Colors.grey[500]!,
                                                          ),
                                                        ),
                                                      ),
                                                    )),
                                                    const SizedBox(
                                                      width: 16,
                                                    ),
                                                    Expanded(
                                                        child: TextField(
                                                      decoration: InputDecoration(
                                                        border: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color: Colors.grey[500]!,
                                                          ),
                                                        ),
                                                        enabledBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color: Colors.grey[500]!,
                                                          ),
                                                        ),
                                                        focusedBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color: Colors.grey[500]!,
                                                          ),
                                                        ),
                                                      ),
                                                    )),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 16,
                                              ),
                                              Container(
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                        child: TextField(
                                                      decoration: InputDecoration(
                                                        border: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color: Colors.grey[500]!,
                                                          ),
                                                        ),
                                                        enabledBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color: Colors.grey[500]!,
                                                          ),
                                                        ),
                                                        focusedBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color: Colors.grey[500]!,
                                                          ),
                                                        ),
                                                      ),
                                                    )),
                                                    const SizedBox(
                                                      width: 16,
                                                    ),
                                                    Expanded(
                                                        child: TextField(
                                                      decoration: InputDecoration(
                                                        border: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color: Colors.grey[500]!,
                                                          ),
                                                        ),
                                                        enabledBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color: Colors.grey[500]!,
                                                          ),
                                                        ),
                                                        focusedBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color: Colors.grey[500]!,
                                                          ),
                                                        ),
                                                      ),
                                                    )),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 12,
                                              ),
                                              Container(
                                                height: 54,
                                                decoration: const BoxDecoration(
                                                  color: Colors.black,
                                                ),
                                                child: const Center(
                                                  child: Text(
                                                    "Search",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Center(
                                          child: Text("${_tabController.index}"),
                                        ),
                                        Center(
                                          child: Text("${_tabController.index}"),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 200,
                        color: Colors.white,
                        padding: const EdgeInsets.only(left: 16, right: 0, top: 12, bottom: 16),
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
                                    margin: const EdgeInsets.only(right: 16),
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
                                            children: const [
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
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 16),
                        height: MediaQuery.of(context).size.height / 1.8,
                        color: Colors.white,
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Text(
                              "Your Dream Trip",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ))
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
