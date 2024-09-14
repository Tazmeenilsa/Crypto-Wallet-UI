import 'package:crypto_wallet/Navigation/Navigation_Menu.dart';
import 'package:crypto_wallet/Widgets/screens/dive_wallet_token.dart';
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
        // routes: <String, WidgetBuilder>{
        //   '/': (BuildContext context) => const NavigationMenu(),
        //   'home': (BuildContext context) => const Home(),
        //   'setting': (BuildContext context) => const Settings(),
        //   "/dive_wallet": (BuildContext context) => const Dive_Wallet_token(),
        // },
        title: 'Crypto Wallet',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Montserrat'),
        home: const Scaffold(body: Home()));
  }
}
