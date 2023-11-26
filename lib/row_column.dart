import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home:
          Row_Column())); //here u can write the class name too instead of material app
}

class Row_Column extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: double.infinity,
              width:100.0,
              color: Colors.red,
              child: const Text("text 1"),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(

                  height:100.0,
                  width:100.0,
                  color: Colors.yellow,
                  child: const Text("text 2"),
                ),
                // const SizedBox(
                //   height: 20,
                // ),
                Container(
                  height:100.0,
                  width:100.0,
                  color: Colors.green,
                  child: const Text("text 2"),
                ),
              ],
            ),
            Container(
              width: 100.0,
              height: double.infinity,
              color: Colors.blue,
              child: const Text("text 3"),
            ),
          ],
        ),
      ),
    );
  }
}
