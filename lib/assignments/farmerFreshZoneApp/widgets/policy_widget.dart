import 'package:flutter/material.dart';

class PolicyPage extends StatelessWidget {
  const PolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(elevation: 10,color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 2,strokeAlign:BorderSide.strokeAlignOutside ,
          color: const  Color(0xFFC8E6C9)
        )),
        height: 100,
        width: MediaQuery.of(context).size.width,
        child: const Center(
          child: Wrap(
            spacing: 45,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.alarm_add,
                    color: Colors.green,
                  ),
                  Text(
                    "30 mins \nPolicy",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.phone_android_outlined,
                    color: Colors.green,
                  ),
                  Text(
                    "Traceability",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.green,
                  ),
                  Text(
                    "Local \nSourcing",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
