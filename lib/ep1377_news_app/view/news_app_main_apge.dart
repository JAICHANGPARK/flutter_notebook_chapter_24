import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class NewsAppMainPage extends StatefulWidget {
  const NewsAppMainPage({Key? key}) : super(key: key);

  @override
  _NewsAppMainPageState createState() => _NewsAppMainPageState();
}

class _NewsAppMainPageState extends State<NewsAppMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 16,
              right: 16,
              bottom: 0,
              top: 16,
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 28,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Welcome back!"),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Dreamwalker")
                        ],
                      ),
                      Spacer(),
                      Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Ionicons.notifications_outline),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 24),
                    height: 64,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              child: Container(
                height: 64,
                color: Colors.black,
              ),
              bottom: 16,
              left: 24,
              right: 24,
            )
          ],
        ),
      ),
    );
  }
}
