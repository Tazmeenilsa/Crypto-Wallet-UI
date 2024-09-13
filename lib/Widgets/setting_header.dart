import 'package:flutter/material.dart';

class Settingheader extends StatelessWidget {
  const Settingheader({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        // color: const Color.fromARGB(255, 73, 121, 199),
        child: const Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                    onPressed: null,
                    icon: Icon(Icons.doorbell_outlined,
                        color: Colors.white, size: 30)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
