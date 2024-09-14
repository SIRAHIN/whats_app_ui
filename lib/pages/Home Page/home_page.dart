import 'package:flutter/material.dart';
import 'package:whatsappui/pages/Call%20Page/call_page.dart';
import 'package:whatsappui/pages/Camara%20Page/camara_page.dart';
import 'package:whatsappui/pages/Status%20Page/status_screen.dart';
import 'package:whatsappui/pages/Tab%20Bar%20Screen/chats_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff075e54),
            title: const Text(
              "WhatsApp",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 25),
            ),
            actions: const [
              Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 30,
              )
            ],
            bottom: TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white.withOpacity(0.5),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Colors.white,
                tabs: [
                  const Tab(
                      icon: Icon(
                    Icons.camera_alt_rounded,
                  )),
                  Tab(
                    text: "CHATS",
                  ),
                  const Tab(
                    text: "STATUS",
                  ),
                  const Tab(
                    text: "CALLS",
                  )
                ]),
          ),
        
        
          body: TabBarView(children: [
            CameraPage(),
            ChatScreen(),
            StatusScreen(),
            CallScreen()
          ]),
        ),
      ),
    );
  }
}
