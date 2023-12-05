import 'package:flutter/material.dart';
import 'package:practice/ownPractice/Shared%20Preferences/homePage.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main()
{
  runApp(MaterialApp(home:ScreenOne()));
}
class ScreenOne extends StatelessWidget {
  //const ScreenOne({super.key});
  final cntroller = TextEditingController();//to receive the value from text form field using controller

  @override
  Widget build(BuildContext context) {
    getSavedData(context);
    //SharedPreferences prefs=await SharedPreferences.getInstance();
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              controller: cntroller,
            ),
          ),
          ElevatedButton(onPressed: () {
            storeData();
          }, child: Text("Saved Data"),),
        ],),
      ),
    );
  }

  Future<void> storeData() async {
    // print(cntroller.text);//can see whether the value is storing or not in terminal
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString('saved_data', cntroller.text);//storing the value in saved_data
  }

  void getSavedData(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final stored_value = prefs.getString('saved_data');
    if (stored_value != null) {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (contex) => HomePage()));
    }
  }
}
