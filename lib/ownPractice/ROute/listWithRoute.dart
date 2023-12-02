import 'package:flutter/material.dart';
import 'package:practice/ownPractice/ROute/screenTwo.dart';

class WhatsAppChat extends StatelessWidget {
  // const WhatsAppChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
            itemBuilder: (cntxt, index) => ListTile(onTap:(){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScreenTwo(name: 'person $index',)));
            } ,
              leading: const CircleAvatar(),
              title: Text("person $index"),
              subtitle: const Text("hi"),
              trailing: const Text("a minute ago"),
            ),
            separatorBuilder: (cntxt, index) => const Divider(),
            itemCount: 30));
  }
}
