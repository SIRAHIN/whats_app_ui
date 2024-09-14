import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  final List<String> callList = [
    "John Doe",
    "Jane Doe",
    "Alice",
    "Bob",
    "Charlie",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calls'),
      ),
      body: ListView.builder(
        itemCount: callList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://xsgames.co/randomusers/assets/avatars/male/$index.jpg'), // Add your avatar image path
            ),
            title: Text(callList[index]),
            subtitle: Row(
              children: [
                Icon(Icons.call_received, color: Colors.red),
                SizedBox(width: 5.0),
                Text('Today, 10:30 AM'),
              ],
            ),
            trailing: IconButton(
              icon: Icon(Icons.call),
              onPressed: () {
                // Add your action for initiating a call
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your action for the FAB (e.g., initiating a new call)
        },
        child: Icon(Icons.add_call),
      ),
    );
  }
}