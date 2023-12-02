import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  // const ScreenTwo({super.key});
  final String name;

  const ScreenTwo(
      {super.key, required this.name}); //to receive the name from screen 1

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
    appBar: AppBar(title: Text(name),),
        body: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
    child: Text("Go to back")
    //instead of here we can give the name in app bar too
            //child: Text(name)), //to print the receiving name from screen1
      ),
      ),
    );
  }
}
