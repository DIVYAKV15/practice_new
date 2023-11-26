import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homeScreen.dart';

void main() {
  runApp(
    MaterialApp(
      home: SplashScreen(),
      theme: ThemeData(primarySwatch: Colors.teal),
    ),
  );
}

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
   void initState() {
  Timer(Duration(seconds: 4), () {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
  });
    super.initState();
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 380,
              ),
              Image(
                image: AssetImage("assets/icons/whatsapp.png"),
                height: 50,
                width: 60,
              ),
              SizedBox(
                height: 250,
              ),
              Text(
                "from",
                style: TextStyle(color: Colors.white),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage("assets/icons/meta_logo_icon.png"),
                      height: 50,
                      width: 50,
                      color: Colors.white,
                    ),
                    Text("META",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
