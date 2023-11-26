import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: List_seperate1()));
}

class List_seperate1 extends StatelessWidget {
  var months = [
    "january",
    "february",
    "march",
    "april",
    "may",
    "june",
    "july",
    "august",
    "september",
    "october",
    "November",
    "December"
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("ListView Seperator"),
          centerTitle: true,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return Card(
                child: Text(months[index],style: TextStyle(fontSize: 30),),
              );
            },
            separatorBuilder: (c, index) {
              if (index % 4 == 0) {
                return const Card(
                  color: Colors.red,
                  child: Text("Advertisement",style: TextStyle(fontSize: 30),),
                );
              } else {
                return SizedBox();
              }
            },
            itemCount: 12));
  }
}
