import 'package:flutter/material.dart';

class ItemsPages extends StatelessWidget {
  const ItemsPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "FARMERS FRESH ZONE",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
            ListTile(
            leading: Icon(Icons.location_on),
            title: Text("kochi"),
             trailing: IconButton(onPressed:(){}, icon: Icon(Icons.arro)),
          ),
        ],
      ),
    );
  }
}
