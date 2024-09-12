import 'package:crypto_wallet/Widgets/SettingHeader.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          color: Colors.black,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Settingheader(),
                const Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 0),
                  child: Text(
                    'Settings',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                GridView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1.01,
                  ),
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(left: 5),
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 97, 130, 236),
                                Colors.white,
                                Color.fromARGB(255, 118, 199, 236)
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              stops: [0.4, 0.8, 1],
                              transform: GradientRotation(5.6)),
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(left: 120),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                IconButton(
                                  onPressed: null,
                                  icon: Icon(
                                    Icons.arrow_outward,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            margin: EdgeInsets.only(right: 10),
                            padding: EdgeInsets.only(
                                right:
                                    MediaQuery.paddingOf(context).right * 0.5,
                                top: MediaQuery.paddingOf(context).top * 0.3,
                                left: 0),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconButton(
                                  style: ButtonStyle(
                                      padding: WidgetStatePropertyAll(
                                          EdgeInsets.only(right: 30, top: 8))),
                                  onPressed: null,
                                  icon: Icon(
                                    Icons.wallet_travel_outlined,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Wallet Security',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(right: 5),
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 154, 116, 248),
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(left: 120),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                IconButton(
                                  onPressed: null,
                                  icon: Icon(
                                    Icons.arrow_outward,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            margin: EdgeInsets.only(right: 10),
                            padding: EdgeInsets.only(
                                right:
                                    MediaQuery.paddingOf(context).right * 0.5,
                                top: MediaQuery.paddingOf(context).top * 0.3,
                                left: 0),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconButton(
                                  style: ButtonStyle(
                                      padding: WidgetStatePropertyAll(
                                          EdgeInsets.only(right: 30, top: 8))),
                                  onPressed: null,
                                  icon: Icon(
                                    Icons.notification_add_outlined,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Push Notification',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(left: 5),
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(31, 187, 187, 187),
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(left: 120),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                IconButton(
                                  onPressed: null,
                                  icon: Icon(
                                    Icons.arrow_outward,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            margin: EdgeInsets.only(right: 10),
                            padding: EdgeInsets.only(
                                right:
                                    MediaQuery.paddingOf(context).right * 0.5,
                                top: MediaQuery.paddingOf(context).top * 0.3,
                                left: 0),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconButton(
                                  style: ButtonStyle(
                                      padding: WidgetStatePropertyAll(
                                          EdgeInsets.only(right: 30, top: 8))),
                                  onPressed: null,
                                  icon: Icon(
                                    Icons.price_change_outlined,
                                    size: 20,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  'Price Alerts',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(right: 5),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(left: 120),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                IconButton(
                                  onPressed: null,
                                  icon: Icon(
                                    Icons.arrow_outward,
                                    size: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            margin: EdgeInsets.only(right: 10),
                            padding: EdgeInsets.only(
                                right:
                                    MediaQuery.paddingOf(context).right * 0.5,
                                top: MediaQuery.paddingOf(context).top * 0.3,
                                left: 0),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconButton(
                                  style: ButtonStyle(
                                      padding: WidgetStatePropertyAll(
                                          EdgeInsets.only(right: 30, top: 8))),
                                  onPressed: null,
                                  icon: Icon(
                                    Icons.live_help_outlined,
                                    size: 20,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  'Help & Support',
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(left: 5),
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 118, 199, 236),
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(left: 120),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                IconButton(
                                  onPressed: null,
                                  icon: Icon(
                                    Icons.arrow_outward,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            margin: EdgeInsets.only(right: 10),
                            padding: EdgeInsets.only(
                                right:
                                    MediaQuery.paddingOf(context).right * 0.5,
                                top: MediaQuery.paddingOf(context).top * 0.3,
                                left: 0),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconButton(
                                  style: ButtonStyle(
                                      padding: WidgetStatePropertyAll(
                                          EdgeInsets.only(right: 30, top: 15))),
                                  onPressed: null,
                                  icon: Icon(
                                    Icons.person_outline_outlined,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Accounts',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(right: 5),
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 52, 61, 68),
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(left: 120),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                IconButton(
                                  onPressed: null,
                                  icon: Icon(
                                    Icons.arrow_outward,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            margin: EdgeInsets.only(right: 10),
                            padding: EdgeInsets.only(
                                right:
                                    MediaQuery.paddingOf(context).right * 0.5,
                                top: MediaQuery.paddingOf(context).top * 0.3,
                                left: 0),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconButton(
                                  style: ButtonStyle(
                                      padding: WidgetStatePropertyAll(
                                          EdgeInsets.only(right: 30, top: 15))),
                                  onPressed: null,
                                  icon: Icon(
                                    Icons.warning_amber_outlined,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'About',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width * 1,
                  margin:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Color.fromARGB(255, 52, 61, 68),
                  ),
                  child: const ListTile(
                    leading: CircleAvatar(
                      child: Icon(
                        Icons.telegram,
                        color: Colors.black,
                      ),
                    ),
                    title: Text('Join us on telegram'),
                    textColor: Colors.white,
                    trailing: IconButton(
                      style: ButtonStyle(alignment: Alignment.centerRight),
                      onPressed: null,
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    tileColor: const Color.fromARGB(31, 187, 187, 187),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Color.fromARGB(255, 52, 61, 68),
                  ),
                  child: const ListTile(
                    leading: CircleAvatar(
                      child: Icon(
                        Icons.discord,
                        color: Colors.black,
                      ),
                    ),
                    title: Text('Join us on Discor'),
                    textColor: Colors.white,
                    trailing: IconButton(
                      style: ButtonStyle(alignment: Alignment.centerRight),
                      onPressed: null,
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    tileColor: const Color.fromARGB(31, 187, 187, 187),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
