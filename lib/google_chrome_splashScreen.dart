import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 320, 0, 0),
              child: const Center(
                child: Image(
                  image: AssetImage("assets/icons/Google-Chrome.png"),
                  height: 100,
                  width: 100,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 270, 0, 0),
              child: const Column(
                children: [
                  Text(
                    "Google",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
