import 'package:crypto_wallet/Navigation/Navigation_Menu.dart';
import 'package:crypto_wallet/setting.dart';
import 'package:crypto_wallet/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0; //New

    return MaterialApp(
        title: 'Crypto Wallet',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Montserrat'),
        home: const NavigationMenu());
  }
}
