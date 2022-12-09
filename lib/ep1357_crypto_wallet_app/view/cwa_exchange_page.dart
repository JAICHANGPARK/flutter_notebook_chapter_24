import 'package:crypto_font_icons/crypto_font_icons.dart';
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
                    height: 300,
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
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      children: const [
                                        Icon(Icons.upload_outlined),
                                        Text("YOU PAY"),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 48,
                                          width: 48,
                                          decoration: BoxDecoration(
                                            border: Border.all(),
                                            shape: BoxShape.circle,
                                            color: Colors.purple,
                                          ),
                                          child: const Icon(
                                            CryptoFontIcons.BTC,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        Expanded(
                                          child: Column(
                                            children: [
                                              Row(
                                                children: const [
                                                  Text("Bitcoin"),
                                                  Icon(
                                                    Icons.keyboard_arrow_down,
                                                  ),
                                                  Spacer(),
                                                  Text("6590.08"),
                                                  Text("BTC"),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: const [
                                                  Text("BTC"),
                                                  Text("Balacne 7634.43"),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              const Divider(
                                height: 42,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      children: const [
                                        Icon(Icons.download_outlined),
                                        Text("YOU GET"),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 48,
                                          width: 48,
                                          decoration: BoxDecoration(
                                            border: Border.all(),
                                            shape: BoxShape.circle,
                                            color: Colors.green,
                                          ),
                                          child: const Icon(
                                            Icons.attach_money,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        Expanded(
                                          child: Column(
                                            children: [
                                              Row(
                                                children: const [
                                                  Text("US Dollar"),
                                                  Icon(
                                                    Icons.keyboard_arrow_down,
                                                  ),
                                                  Spacer(),
                                                  Text("75356.09"),
                                                  Text("USD"),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: const [
                                                  Text("BTC"),
                                                  Text("Balance 7634.43"),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
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
                      children: const [],
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
                    padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    child: Row(
                      children: [
                        const Expanded(child: Text("")),
                        const VerticalDivider(
                          indent: 8,
                          endIndent: 8,
                          color: Colors.grey,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.copy),
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
