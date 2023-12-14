import 'package:flutter/material.dart';


class ListStudent extends StatelessWidget {
  const ListStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: (context,index)=>ListTile(
      title: Text('Name $index'),
      subtitle: Text('age $index'),
    ),
        separatorBuilder:(context,index)=>Divider() , itemCount: 10);



  }
}
