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
          title: Text("Home"),
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [Icon(Icons.notifications_none)],
        ),
        body: Column(
          children: [
            Container(
                padding: EdgeInsets.fromLTRB(16, 24, 16, 32),
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
                    SizedBox(
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
                      margin: EdgeInsets.only(
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
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: TextField(
                                decoration: InputDecoration(icon: Icon(Icons.search), hintText: "Search Your Location"),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              color: Color(0xfffa902e),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(
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
              children: [],
            )
          ],
        ));
  }
}
