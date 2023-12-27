import 'dart:async';

import 'package:flutter/material.dart';
import 'package:practice/assignments/farmerFreshZoneApp/view/ItemsPage.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>ItemsPages()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: Colors.green,
      body: Center(
        child: Image(image: AssetImage("assets/images/farmerFreshzone.png"),),
      ),
    );
  }
}
