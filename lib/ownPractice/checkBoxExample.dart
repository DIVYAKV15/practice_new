import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: CheckBoxExample()));
}

class CheckBoxExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CheckBoxExampleState();
}

class _CheckBoxExampleState extends State<CheckBoxExample> {
  bool? _isChecked = false; //declaring the checkbox is false
  bool? _isChecked2 = false;
  //its for second checkbox
  bool? _isChecked3 = false;
  bool? _isChecked4=false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Text("check box example"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                  activeColor: Colors.pink, //checkbox color
                  checkColor: Colors.green, //tick color
                  value: _isChecked, //its the required value
                  //here we can give bool value/previous declared variable name
                  onChanged: (val) //to click the check box
                      //here in on changed function we need to give bool value
                      {
                    setState(() {
                      _isChecked =
                          val; //the value coming while clickimng in checkbox
                      //we are assigning it to _ischecked variable
                    });
                  }),
              Checkbox(
                  value: _isChecked2,
                  tristate:
                      true, //while giving true to tristate we can give tru /false/null checkbox
                  onChanged: (bool? val) {
                    setState(() {
                      _isChecked2 = val;
                    });
                  }),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CheckboxListTile(
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),side:BorderSide(color: Colors.red,width: 5,style: BorderStyle.solid,strokeAlign:BorderSide.strokeAlignOutside ) ) ,
                    title: const Text("Send Notification"),
                    subtitle: const Text("Turn On or off"),
                    tileColor: Colors.blueGrey,
                    value: _isChecked3,
                    onChanged: (val) {
                      setState(() {
                        _isChecked3 = val;
                      });
                    }),
              ),
              // SizedBox(height: 10.0,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CheckboxListTile(
                  controlAffinity:ListTileControlAffinity.leading ,//to make the checkbox in starting we using this one
                    title: const Text("Send Notification"),
                    subtitle: const Text("Turn On or off"),
                    tileColor: Colors.limeAccent,
                    value: _isChecked4,
                    onChanged: (val) {
                      setState(() {
                        _isChecked4 = val;
                      });
                    }),
              ),
            ],
          ),
        ));
  }
}
