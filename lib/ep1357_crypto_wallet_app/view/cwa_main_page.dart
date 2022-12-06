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
          icon: Icon(
            Icons.menu,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Ionicons.notifications_outline,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Ionicons.search,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            child: Container(
              height: 100,
            ),
          )
        ],
      ),
    );
  }
}
