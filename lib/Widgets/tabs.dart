import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  const Tabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              // margin: EdgeInsets.symmetric(horizontal: 3),
              padding: EdgeInsets.all(12),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 52, 61, 68),
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              child: const Text(
                "Price Options",
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: Container(
              // margin: EdgeInsets.symmetric(horizontal: 3),
              padding: EdgeInsets.all(12),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 52, 61, 68),
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              child: const Text(
                "Wallet Connections",
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: Container(
              // margin: EdgeInsets.symmetric(horizontal: 3),
              padding: EdgeInsets.all(12),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 52, 61, 68),
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              child: const Text(
                "Manage Tokens",
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
