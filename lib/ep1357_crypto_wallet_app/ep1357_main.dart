import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_24/ep1357_crypto_wallet_app/view/cwa_main_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() {
  runApp(ProviderScope(child: const CryptoWalletApp()));
}

class CryptoWalletApp extends StatelessWidget {
  const CryptoWalletApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CryptoWalletAppMainPage(),
    );
  }
}
