import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class History extends StatelessWidget {
  const History({super.key});
  @override
  Widget build(BuildContext context) {
    var listHistory = [
      {
        "numSender": "1234567890",
        "numReceiver": "1234567890",
        "amount": 1000,
        "date": "2022-01-01",
        "type": "credit",
      },

      {
        "numSender": "1234567890",
        "numReceiver": "1234567890",
        "amount": 1000,
        "date": "2022-01-01",
        "type": "data",
      },

      {
        "numSender": "1234567890",
        "numReceiver": "1234567890",
        "amount": 1000,
        "date": "2022-01-01",
        "type": "receive",
      },

      {
        "numSender": "1234567890",
        "numReceiver": "1234567890",
        "amount": 1000,
        "date": "2022-01-01",
        "type": "send",
      },
    ];

    provideIcon(String type) {
      switch (type) {
        case "credit":
          return Icons.arrow_outward_sharp;
        case "data":
          return Icons.swap_vert;
        case "receive":
          return Icons.arrow_downward;
        case "send":
          return Icons.arrow_upward;
        default:
          return IconlyLight.work;
      }
    }

    return Scaffold(
      appBar: AppBar(title: const Text("History")),
      body: ListView.builder(
        itemCount: listHistory.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withValues(alpha: 0.5)),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: ListTile(
              leading: Icon(provideIcon(listHistory[index]["type"].toString())),
              title: Text(listHistory[index]["type"].toString()),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${listHistory[index]["numSender"]} -> ${listHistory[index]["numReceiver"]}",
                    style: TextStyle(color: Colors.grey),
                  ),

                  Text(
                    listHistory[index]["date"].toString(),
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              trailing: const Icon(IconlyLight.arrow_right_2),
            ),
          );
        },
      ),
    );
  }
}
