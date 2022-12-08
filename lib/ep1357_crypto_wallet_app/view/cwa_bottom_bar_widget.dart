import 'package:flutter/material.dart';

class CryptoWalletAppBottomBar extends StatelessWidget {
  const CryptoWalletAppBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
