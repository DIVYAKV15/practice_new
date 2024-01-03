import 'package:flutter/material.dart';
import 'package:practice/assignments/farmerFreshZoneApp/view/ItemsPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FarmerSignUpPage extends StatefulWidget {
  const FarmerSignUpPage({super.key});

  @override
  State<FarmerSignUpPage> createState() => _FarmerSignUpPageState();
}

class _FarmerSignUpPageState extends State<FarmerSignUpPage> {
  var useridCntrl = TextEditingController();
  var userName = TextEditingController();
  var pwdCntrl = TextEditingController();
  var confirmPwdCntrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("REGISTRATION PAGE"),
      ),
      body: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: userName,
              decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                          style: BorderStyle.solid)),
                  suffixIcon: Icon(Icons.person_add_alt),
                  label: Text(
                    " USERNAME",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: useridCntrl,
              decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                          style: BorderStyle.solid)),
                  suffixIcon: Icon(Icons.person_add_alt),
                  label: Text(
                    " USERID",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: pwdCntrl,
              decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                          style: BorderStyle.solid)),
                  suffixIcon: Icon(Icons.password),
                  label: Text(
                    " PASSWORD",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: confirmPwdCntrl,
              decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                          style: BorderStyle.solid)),
                  suffixIcon: Icon(Icons.password_rounded),
                  label: Text(
                    " CONFIRM PASSWORD",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                storeData();
              },
              child: const Text("CONFIRM"),
            ),
          ],
        ),
      ),
    );
  }

  void storeData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String name = userName.text.trim();
    String id = useridCntrl.text.trim();
    String pwd = pwdCntrl.text.trim();
    if (id != '' && pwd != '') //user name and pwd not null means
    {
      prefs.setString('uname', name); //setString is the save the string value
      prefs.setString('userId', id);
      prefs.setString('password', pwd);
    }
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ItemsPages()));
  }
}
