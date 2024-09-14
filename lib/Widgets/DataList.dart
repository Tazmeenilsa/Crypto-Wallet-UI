import 'package:crypto_wallet/Widgets/screens/dive_wallet_token.dart';
import 'package:crypto_wallet/data/data.dart';
import 'package:flutter/material.dart';

class DataList extends StatelessWidget {
  final bool isTokenSelected;
  const DataList({required this.isTokenSelected, super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> data = isTokenSelected ? tokens : nfts;
    void onTap() {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const Dive_Wallet_token()));
    }

    ;
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final item = data[index];

          return InkWell(
            onTap: onTap,
            child: Container(
              margin: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Color.fromARGB(255, 52, 61, 68),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(item['imageUrl']),
                ),
                title: Text(item['title']),
                textColor: Colors.white,
                subtitle: Text(
                  item['subtitle'],
                  style: TextStyle(color: Colors.green),
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      isTokenSelected ? item['dwt'] : item['dwn'],
                      style: const TextStyle(color: Colors.white),
                    ),
                    Text(
                      isTokenSelected
                          ? '-\$${item['decrementOfDWT']}'
                          : '-\$${item['decrementOfDWN']}',
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
                tileColor: const Color.fromARGB(31, 187, 187, 187),
              ),
            ),
          );
        });
  }
}
