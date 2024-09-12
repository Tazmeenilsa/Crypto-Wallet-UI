import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, right: 10, left: 10),
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.menu_outlined,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: null,
                      icon: Icon(Icons.doorbell_outlined,
                          color: Colors.white, size: 30)),
                  IconButton(
                      onPressed: null,
                      icon: Icon(Icons.add, color: Colors.white, size: 30))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
