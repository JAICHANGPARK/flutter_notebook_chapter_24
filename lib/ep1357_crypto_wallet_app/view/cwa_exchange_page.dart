import 'package:flutter/material.dart';

class CwaExchangePage extends StatefulWidget {
  const CwaExchangePage({Key? key}) : super(key: key);

  @override
  State<CwaExchangePage> createState() => _CwaExchangePageState();
}

class _CwaExchangePageState extends State<CwaExchangePage> {
  double _sliderXCord = 6.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("EXCHANGE"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Expanded(child: Column()),
            Container(
              height: 64,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(32),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: _sliderXCord,
                    bottom: 4,
                    top: 4,
                    child: GestureDetector(
                      onPanStart: (event) {
                        print("[onPanStart] $event");
                      },
                      onPanUpdate: (event) {
                        print("[onPanUpdate] $event | ${event.localPosition}");
                        setState(() {
                          _sliderXCord = event.localPosition.dx;
                        });
                      },
                      onPanCancel: () {
                        setState(() {
                          _sliderXCord = 8.0;
                        });
                      },
                      onPanEnd: (event) {
                        setState(() {
                          _sliderXCord = 8.0;
                        });
                      },
                      child: CircleAvatar(
                        radius: 26,
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        child: Icon(
                          Icons.arrow_forward,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Center(
                      child: Text(
                        "Swipe to Exchange",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
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
    );
  }
}
