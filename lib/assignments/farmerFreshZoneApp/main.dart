import 'package:flutter/material.dart';
import 'package:practice/assignments/farmerFreshZoneApp/view/ScreenSplash.dart';

void main() {
  runApp(MyFarmerApp());
}

class MyFarmerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: ScreenSplash(),
      theme: ThemeData(
        //  primaryColor: Colors.green,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal,primary: Colors.pinkAccent,background: Colors.white)),
    );
  }
}
