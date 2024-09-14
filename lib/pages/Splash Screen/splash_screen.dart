import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsappui/pages/Home%20Page/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(
      seconds: 6
    ), () { 
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => HomePage(),), (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Image.asset("assets/images/whatsapp_logo.gif",
        height: 240,
        width: 240,
        ),
      ),
    ) ;
  }
}