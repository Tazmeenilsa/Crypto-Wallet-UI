import 'package:crypto_wallet/Widgets/setting_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Dive_Wallet_token extends StatelessWidget {
  const Dive_Wallet_token({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      color: Colors.black,
      child: Column(
        children: [
          Settingheader(),
        ],
      ),
    ));
  }
}
