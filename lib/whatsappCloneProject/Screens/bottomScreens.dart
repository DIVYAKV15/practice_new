import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: BottomScreen()));
}

class BottomScreen extends StatefulWidget {
  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (tapIndex) {
          setState(() {
            index = tapIndex;
          });
        },
        currentIndex: index,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.blueGrey,
            icon: Icon(
              Icons.update,
              color: Colors.blue,
            ),
            label: "Updates",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat, color: Colors.blue), label: "chats"),
          BottomNavigationBarItem(
              icon: Icon(Icons.call, color: Colors.blue), label: "Calls"),
          BottomNavigationBarItem(icon: Icon(Icons.circle_outlined,color: Colors.blue),
          label:"Status"),

          BottomNavigationBarItem(
              icon: Icon(Icons.settings, color: Colors.blue),
              label: "Settings", ),

        ],
        selectedItemColor: Colors.amber ,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 30,color: Colors.blue),
      ),
    );
  }
}
