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
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("EXCHANGE"),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 320,
                    decoration: BoxDecoration(
                      color: Colors.indigo[50],
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 16,
                          right: 16,
                          bottom: 16,
                          top: 16,
                          child: Column(
                            children: [
                              Expanded(child: Column()),
                              const Divider(),
                              Expanded(child: Column()),
                            ],
                          ),
                        ),
                        const Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          top: 0,
                          child: Center(
                            child: CircleAvatar(
                              radius: 34,
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.white,
                              child: Icon(
                                Icons.import_export,
                                size: 42,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 16),
                    height: 64,
                    decoration: BoxDecoration(
                      color: Colors.indigo[50],
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [],
                    ),
                  ),
                  const Text(
                    "Exchange Account",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Container(
                    height: 140,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8,
                    ),
                    child: Text("Wallet Token"),
                  ),
                  Container(
                    height: 54,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    child: Row(
                      children: [
                        Expanded(child: Text("")),
                        VerticalDivider(
                          indent: 8,
                          endIndent: 8,
                          color: Colors.grey,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.copy),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
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
                      child: const CircleAvatar(
                        radius: 26,
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        child: Icon(
                          Icons.arrow_forward,
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
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
            ),
          ],
        ),
      ),
    );
  }
}
