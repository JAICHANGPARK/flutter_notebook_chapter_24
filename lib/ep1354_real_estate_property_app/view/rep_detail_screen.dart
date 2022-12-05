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
      backgroundColor: Colors.teal[50],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.forward)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.bookmark)),
                const Spacer(),
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.cancel),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Dream Walker"),
                          Row(
                            children: const [
                              Text("Realtor"),
                              Text("Sonama County, CA"),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.teal,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        child: const Text(
                          "Property",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    "Dreamwalker listed a",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 32,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "property",
                        style: TextStyle(
                          backgroundColor: Colors.teal[100],
                          color: Colors.teal,
                          fontWeight: FontWeight.w900,
                          fontSize: 38,
                        ),
                      ),
                      const Text(
                        " in",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 38,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Windsor, CA",
                    style: TextStyle(
                      backgroundColor: Colors.teal[100],
                      color: Colors.teal,
                      fontWeight: FontWeight.w900,
                      fontSize: 38,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 16,
                    ),
                    child: Text(
                      "Posted 11 days ago",
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 0.8,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blueGrey,
                        image: const DecorationImage(
                          image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2017/03/22/17/39/kitchen-2165756_960_720.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blueGrey,
                        image: const DecorationImage(
                          image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2017/03/22/17/39/kitchen-2165756_960_720.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blueGrey,
                        image: const DecorationImage(
                          image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2017/03/22/17/39/kitchen-2165756_960_720.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blueGrey,
                        image: const DecorationImage(
                          image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2017/03/22/17/39/kitchen-2165756_960_720.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
