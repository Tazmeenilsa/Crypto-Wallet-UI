import 'package:crypto_wallet/Widgets/DataList.dart';
import 'package:crypto_wallet/Widgets/Header.dart';
import 'package:crypto_wallet/Widgets/TokensButton.dart';
import 'package:crypto_wallet/Widgets/tabs.dart';
import 'package:flutter/material.dart';

void main() {}

class Home extends StatelessWidget {
  const Home({super.key});
  void _onSendPressed() {
    print('sent');
  }

  void _onReceivePressed() {
    print('Recieved');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      color: Colors.black,
      child: Column(children: [
        Container(
          height: 300,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.indigoAccent, Colors.lightBlueAccent],
              ),
              // color: Colors.indigoAccent,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Header(),
              Column(
                children: [
                  Text(
                    "Main Wallet",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "YOUR BALANCE",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Text(
                    "56,919.95",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: ElevatedButton.icon(
                      onPressed: _onSendPressed,
                      icon: Icon(Icons.send, color: Colors.black),
                      label: Text(
                        'Send',
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ButtonStyle(
                        // padding: WidgetStateProperty.all(
                        //     const EdgeInsets.symmetric(
                        //         vertical: 16.0, horizontal: 16.0)),
                        minimumSize:
                            WidgetStateProperty.all(const Size(160, 50)),
                        backgroundColor: WidgetStateProperty.all(Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: ElevatedButton.icon(
                      onPressed: _onReceivePressed,
                      icon: Icon(Icons.call_received, color: Colors.black),
                      label: Text(
                        'Receive',
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ButtonStyle(
                        minimumSize:
                            WidgetStateProperty.all(const Size(160, 50)),
                        backgroundColor:
                            WidgetStateProperty.all(Colors.white70),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Tabs(),
        const Expanded(child: TokensButton()),
      ]),
    ));
  }
}
