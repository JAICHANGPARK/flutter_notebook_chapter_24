import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CryptoWalletAppMainPage extends StatefulWidget {
  const CryptoWalletAppMainPage({Key? key}) : super(key: key);

  @override
  State<CryptoWalletAppMainPage> createState() => _CryptoWalletAppMainPageState();
}

class _CryptoWalletAppMainPageState extends State<CryptoWalletAppMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Ionicons.notifications_outline,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Ionicons.search,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            left: 16,
            right: 16,
            bottom: 0,
            top: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.indigo[50],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "CURRENT WALLET BALANCE",
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                              ),
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            child: const Center(
                              child: Icon(
                                CryptoFontIcons.ETH,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            "9835.73",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            "ETH",
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.arrow_drop_up,
                                  color: Colors.green,
                                ),
                                Text(
                                  "2.28%",
                                  style: TextStyle(
                                    color: Colors.green,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text(
                            "PAST 24 HOURS",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 52,
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                              height: 42,
                              margin: const EdgeInsets.symmetric(horizontal: 16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.upload_outlined),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text("Send"),
                                ],
                              ),
                            )),
                            Expanded(
                                child: Container(
                              height: 42,
                              margin: const EdgeInsets.symmetric(horizontal: 16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.download_outlined),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text("Receive"),
                                ],
                              ),
                            )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: const [
                    Icon(
                      Ionicons.pie_chart_outline,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text("Portfolio"),
                    Spacer(),
                    Text("\$6543 (LAST MONTH)")
                  ],
                ),
                Container(
                  height: 42,
                  padding: const EdgeInsets.symmetric(
                    vertical: 14,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                const Text(
                  "My Wallets",
                  style: TextStyle(fontSize: 24),
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Container(
                        height: 64,
                        margin: const EdgeInsets.only(bottom: 8),
                        color: Colors.blueGrey,
                        child: Row(
                          children: [
                            Container(
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Icon(
                                  CryptoFontIcons.ETH,
                                ),
                              ),
                            ),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.only(
                                left: 16,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Etherium"),
                                      Text("ETh 9835.73"),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("ETH"),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.arrow_drop_up,
                                          ),
                                          Text("2.28%"),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ))
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Container(
              height: 100,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    top: 24,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.black,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Ionicons.home_outline),
                            color: Colors.white,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Ionicons.wallet_outline),
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 64,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Ionicons.card_outline),
                            color: Colors.grey,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Ionicons.person_outline),
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    bottom: 16,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          child: Icon(
                            Icons.import_export,
                            size: 42,
                          ),
                          radius: 32,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
