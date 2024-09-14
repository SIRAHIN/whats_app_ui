import 'package:flutter/material.dart';
import 'package:whatsappui/pages/Camara%20Page/camara_page.dart';

class StatusScreen extends StatelessWidget {
  final List<String> statusList = [
    "My Status 1",
    "My Status 2",
    "My Status 3",
    "My Status 4",
    "My Status 5",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        ListTile(
          title: const Text(
            "My Status",
            style: TextStyle(backgroundColor: Colors.white),
          ),
          subtitle: const Text("tap to add status update",
              style: TextStyle(color: Colors.grey)),
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: Color(0xff25D366),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_photo_alternate_outlined,
                  color: Colors.white,
                )),
          ),
        ),
      
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
          child: Text("Viewed updates",
          style: TextStyle(
            color: Color(0xff075E54),
            fontWeight: FontWeight.bold
          ),
          ),
        ),
      
        Expanded(
          child: ListView.builder(
            itemCount: statusList.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading:  CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://xsgames.co/randomusers/assets/avatars/male/$index.jpg"), // Add your avatar image path
                ),
                title: Text('Contact ${index + 1}'),
                subtitle: Text(statusList[index]),
              );
            },
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => CameraPage(),));
        },
        child: Icon(Icons.camera, color: Color(0xff25D366),),
      ),
    );
  }
}
