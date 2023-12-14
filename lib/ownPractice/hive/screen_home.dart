import 'package:flutter/material.dart';
import 'package:practice/ownPractice/hive/list_student.dart';
import 'package:practice/ownPractice/hive/student_details.dart';
void main()
{
  runApp(MaterialApp(home:ScreenHome()));
}

class  ScreenHome extends StatelessWidget {
  //const ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(child: Column(
children: [
StudentsDetails(),
Expanded(child:ListStudent(), )//we using expanded here becoz this list should appear fully apart form student details
],
),),
    );
  }
}
