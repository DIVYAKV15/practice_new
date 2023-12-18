import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: AppBarExamples()));
}

class AppBarExamples extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppBarExamplesState();
}

class _AppBarExamplesState extends State<AppBarExamples> {
  @override
//   void initState() {
// Timer(Duration(seconds: 5), () {
//   Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>SignUp()));
//     // TODO: implement initState
// });
//     super.initState();
//
//   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MY APP"),
        titleTextStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
        ),
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search))
        ],
      ),
    );
  }
}
