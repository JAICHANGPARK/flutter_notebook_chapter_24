import 'package:flutter/material.dart';

class NewsAppDetailPage extends StatefulWidget {
  const NewsAppDetailPage({Key? key}) : super(key: key);

  @override
  State<NewsAppDetailPage> createState() => _NewsAppDetailPageState();
}

class _NewsAppDetailPageState extends State<NewsAppDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),
                      child: const Icon(Icons.arrow_back),
                    ),
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        "Sports",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: const Icon(Icons.bookmark_border),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "News Title News Title News Title News Title News Title News Title News Title ",
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text("Dream Walker - 26 min read"),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 16),
                        height: 240,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                              image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2021/12/31/13/25/women-6905793_960_720.jpg",
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        "Star",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const SelectableText(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                        style: TextStyle(
                          height: 1.2,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const Text(
                        "Ranks seventh",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const SelectableText(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                        style: TextStyle(
                          height: 1.2,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
