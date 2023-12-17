import 'dart:math';


import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("BallPin"),
      ),
      body: BallPage(),
    ),
  ));
}

class BallPage extends StatefulWidget {
  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  //const BallPage({super.key});
  var ball_change=2;
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: GestureDetector(onTap: (){
        setState(() {
           ball_change=Random().nextInt(5)+1;
        });
      },
        child: Image(
          image: AssetImage("assets/images/ball$ball_change.png"),
        ),
      ),
    );
  }
}
