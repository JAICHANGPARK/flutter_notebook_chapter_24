import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PropertySearchResultPage extends StatefulWidget {
  const PropertySearchResultPage({Key? key}) : super(key: key);

  @override
  State<PropertySearchResultPage> createState() => _PropertySearchResultPageState();
}

class _PropertySearchResultPageState extends State<PropertySearchResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              child: Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 52,
                        width: 52,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[200]!,
                              spreadRadius: 2,
                              blurRadius: 2,
                            )
                          ],
                        ),
                        child: IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {},
                        ),
                      ),

                    ],
                  ),
                  Center(
                    child: Text("Search Results",style: GoogleFonts.inter(),),
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
