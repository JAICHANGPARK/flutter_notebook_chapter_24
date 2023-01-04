import 'package:flutter/material.dart';

class EcommerceHomeWidget extends StatefulWidget {
  const EcommerceHomeWidget({Key? key}) : super(key: key);

  @override
  State<EcommerceHomeWidget> createState() => _EcommerceHomeWidgetState();
}

class _EcommerceHomeWidgetState extends State<EcommerceHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              const Text(
                "Shofun",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                ),
              ),
              const Badge(
                child: Icon(
                  Icons.notifications_none,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 54,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(32),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 6,
                spreadRadius: 5,
              )
            ],
          ),
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: const Color(0xfff5f6f9),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: const [
                    Icon(
                      Icons.location_on_outlined,
                      size: 20,
                    ),
                    Text("Seoul"),
                  ],
                ),
              ),
              const VerticalDivider(),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    hintText: "Jacket, Sneakers, Electroinics",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 16, bottom: 16, top: 16),
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, _) {
              return Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.grey[300]!,
                      child: const Text(
                        "👗",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    const Text(
                      "Fashion",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 172,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: const Color(0x33ff7800),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 16,
                        top: 16,
                        bottom: 16,
                        right: MediaQuery.of(context).size.width / 2,
                        child: Column(
                          children: [
                            const Text(
                              "Stay Trendy with Addddd Sport",
                              style: TextStyle(
                                height: 1.5,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            const Text("suitable for your fashion"),
                            const SizedBox(
                              height: 16,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0xffff7800),
                                borderRadius: BorderRadius.circular(24),
                              ),
                              padding: const EdgeInsets.symmetric(
                                vertical: 8,
                              ),
                              child: const Center(
                                child: Text(
                                  "Get it Now",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "New Collection",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.orange,
                        ),
                        child: const Text("See all"),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(16, 8, 0, 16),
                  height: 280,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 220,
                          margin: const EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey[400]!,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                  left: 8,
                                  right: 8,
                                  top: 8,
                                  bottom: 8,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 180,
                                        decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                          borderRadius: BorderRadius.circular(8),
                                          image: const DecorationImage(
                                            image: NetworkImage(
                                              "https://cdn.pixabay.com/photo/2016/12/06/09/31/blank-1886008_960_720.png",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.symmetric(vertical: 12),
                                        child: Text(
                                          "Title Title Acelerate",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            "\$59.00",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.orange,
                                              fontSize: 18,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            "\$100.00",
                                            style: TextStyle(
                                              decoration: TextDecoration.lineThrough,
                                              color: Colors.grey,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  )),
                              Positioned(
                                left: -48,
                                top: 8,
                                child: Transform.rotate(
                                  angle: -0.7,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.red[50],
                                    ),
                                    width: 160,
                                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                    child: const Center(
                                      child: Text(
                                        "Limited",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(16, 8, 0, 16),
                  height: 280,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 220,
                        margin: const EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey[400]!,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                                left: 8,
                                right: 8,
                                top: 8,
                                bottom: 8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 180,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2016/12/06/09/31/blank-1886008_960_720.png",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(vertical: 12),
                                      child: Text(
                                        "Title Title Acelerate",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          "\$59.00",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.orange,
                                            fontSize: 18,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          "\$100.00",
                                          style: TextStyle(
                                            decoration: TextDecoration.lineThrough,
                                            color: Colors.grey,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )),
                            Positioned(
                              left: -48,
                              top: 8,
                              child: Transform.rotate(
                                angle: -0.7,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.red[50],
                                  ),
                                  width: 160,
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                  child: const Center(
                                    child: Text(
                                      "Limited",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
