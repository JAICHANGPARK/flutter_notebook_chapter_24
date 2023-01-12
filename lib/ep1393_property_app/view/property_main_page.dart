import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PropertyMainPage extends StatefulWidget {
  const PropertyMainPage({Key? key}) : super(key: key);

  @override
  State<PropertyMainPage> createState() => _PropertyMainPageState();
}

class _PropertyMainPageState extends State<PropertyMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Home"),
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [const Icon(Icons.notifications_none)],
        ),
        body: Column(
          children: [
            Container(
                padding: const EdgeInsets.fromLTRB(16, 24, 16, 32),
                color: Colors.black,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome Back!",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Dreamwalker",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 48,
                      margin: const EdgeInsets.only(
                        top: 24,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: const TextField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.search),
                                  hintText: "Search Your Location",
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              color: const Color(0xfffa902e),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Icon(
                              Icons.tune,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent Posted",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "View all",
                  ),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.orange,
                    textStyle: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
