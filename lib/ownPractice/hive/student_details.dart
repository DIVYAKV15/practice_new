import 'package:flutter/material.dart';


class StudentsDetails  extends StatelessWidget {
  //const ({super.key});
final name_cntrl=TextEditingController();
final age_cntrl=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return
    Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
    children: [
      TextField(
        controller: name_cntrl,
        decoration: const InputDecoration(hintText: "name",border: OutlineInputBorder()),

      ),
    const SizedBox(height: 10,),
    TextField(
      controller: age_cntrl,

      decoration:  InputDecoration(hintText: "age",border: OutlineInputBorder()),
    ),
      const SizedBox(height: 15,),
      ElevatedButton.icon(onPressed: (){
        OnAddStudentButtonClicked();
      }, icon: const Icon(Icons.add),
      label:const Text("Add Student")),

    ],
    ),

    );
  }

  Future<void> OnAddStudentButtonClicked() async{
    final _name=name_cntrl.text.trim();
    final _age=age_cntrl.text.trim();
    if(_name.isEmpty || _age.isEmpty)
      {
        return;
      }

  }
}
