import 'package:flutter/material.dart';
import 'package:practice/ownPractice/ROute/screens/splash.dart';
const _Save_the_key=user
void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Login Sample",
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: SplashScreen(),
    );
  }
}
