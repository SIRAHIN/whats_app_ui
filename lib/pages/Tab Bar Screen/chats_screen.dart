import 'package:flutter/material.dart';

import '../Message Screen/message_screen.dart';


class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});

  List<String> userlist = [
    "Shehanul Islam Rahin",
    "Leonardo da Vinci",
    "Marie Curie",
    "Nelson Mandela",
    "Cleopatra VII Philopator",

    // Artists and writers
    "Wolfgang Amadeus Mozart",
    "William Shakespeare",

    // Scientists
    "Albert Einstein",
    "Stephen Hawking",

    // Activists and entrepreneurs
    "Malala Yousafzai",
    "Oprah Winfrey",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: userlist.length,
        itemBuilder: (context, index) {
          String name = userlist[index];
          return ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => MessageScreen(name: name, image: "https://xsgames.co/randomusers/assets/avatars/male/$index.jpg"),),);
            },
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  "https://xsgames.co/randomusers/assets/avatars/male/$index.jpg"),
            ),
            title: Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text(
              'Contrary to popular belief, Lorem sfdffffffffffffffffffsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsfsdfsdfsdf',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: const Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "12.00 AM",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                CircleAvatar(
                  minRadius: 4,
                  maxRadius: 14,
                  backgroundColor: Colors.green,
                  child: Text(
                    '8',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
