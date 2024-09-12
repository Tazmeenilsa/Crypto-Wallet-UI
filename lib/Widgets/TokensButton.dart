import 'package:crypto_wallet/Widgets/DataList.dart';
import 'package:flutter/material.dart';

class TokensButton extends StatefulWidget {
  const TokensButton({super.key});

  @override
  State<TokensButton> createState() => _TokensButtonState();
}

class _TokensButtonState extends State<TokensButton> {
  bool isTokenSelected = true;
  void _onTokenPressed() {
    setState(() {
      isTokenSelected = true;
    });
  }

  void _onNftsPressed() {
    setState(() {
      isTokenSelected = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 10),
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    widthFactor: .9,
                    child: ElevatedButton(
                      onPressed: _onTokenPressed,
                      style: ButtonStyle(
                        minimumSize:
                            WidgetStateProperty.all(const Size(180, 50)),
                        backgroundColor: WidgetStateProperty.all(
                          isTokenSelected
                              ? Color.fromARGB(255, 154, 116, 248)
                              : const Color.fromARGB(31, 187, 187, 187),
                        ),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: isTokenSelected
                              ? BorderRadius.circular(50)
                              : const BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                  topRight: Radius.circular(0),
                                  bottomRight: Radius.circular(0),
                                ),
                        )),
                      ),
                      child: const Text(
                        'Tokens',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Align(
                    child: ElevatedButton(
                      onPressed: _onNftsPressed,
                      style: ButtonStyle(
                        minimumSize:
                            WidgetStateProperty.all(const Size(180, 50)),
                        backgroundColor: WidgetStateProperty.all(
                          isTokenSelected
                              ? const Color.fromARGB(31, 187, 187, 187)
                              : Color.fromARGB(255, 154, 116, 248),
                        ),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: isTokenSelected
                                ? const BorderRadius.only(
                                    topLeft: Radius.circular(0),
                                    bottomLeft: Radius.circular(0),
                                    topRight: Radius.circular(50),
                                    bottomRight: Radius.circular(50),
                                  )
                                : BorderRadius.circular(50),
                          ),
                        ),
                      ),
                      child: const Text(
                        'NFTs',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              if (isTokenSelected)
                Positioned(
                  left: 160,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50)),
                      color: Color.fromARGB(255, 154, 116, 248),
                    ),
                    width: 30,
                    height: 50,
                  ),
                ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 64, 70, 73),
                  Color.fromARGB(255, 71, 71, 71),
                ],
              ),
            ),
            margin: const EdgeInsets.only(top: 10), // Add margin here
            child: DataList(isTokenSelected: isTokenSelected),
          ),
        ),
      ],
    );
  }
}
