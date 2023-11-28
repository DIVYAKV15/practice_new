import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home:FloatingExample()));
}
class FloatingExample extends StatelessWidget {
 // const FloatingExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(floatingActionButton: FloatingActionButton(onPressed: (){}),);
  }
}
