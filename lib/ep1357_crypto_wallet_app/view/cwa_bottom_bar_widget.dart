import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_24/ep1357_crypto_wallet_app/controller/cwa_menu_index.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ionicons/ionicons.dart';

class CryptoWalletAppBottomBar extends ConsumerWidget {
  const CryptoWalletAppBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext contex, ref) {
    final index = ref.watch(cwaMenuIndex);
    return SizedBox(
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
                    onPressed: () {
                      ref.read(cwaMenuIndex.notifier).state = 0;
                    },
                    icon: const Icon(Ionicons.home_outline),
                    color: index == 0 ? Colors.white : Colors.grey,
                  ),
                  IconButton(
                    onPressed: () {
                      ref.read(cwaMenuIndex.notifier).state = 1;
                    },
                    icon: const Icon(Ionicons.wallet_outline),
                    color: index == 1 ? Colors.white : Colors.grey,
                  ),
                  const SizedBox(
                    width: 64,
                  ),
                  IconButton(
                    onPressed: () {
                      ref.read(cwaMenuIndex.notifier).state = 2;
                    },
                    icon: const Icon(Ionicons.card_outline),
                    color: index == 2 ? Colors.white : Colors.grey,
                  ),
                  IconButton(
                    onPressed: () {
                      ref.read(cwaMenuIndex.notifier).state = 3;
                    },
                    icon: const Icon(Ionicons.person_outline),
                    color: index == 3 ? Colors.white : Colors.grey,
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
