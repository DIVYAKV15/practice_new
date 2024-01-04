import 'package:flutter/material.dart';
import 'package:practice/assignments/farmerFreshZoneApp/view/ItemsPage.dart';
import 'package:practice/assignments/farmerFreshZoneApp/widgets/loginappbar.dart';
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
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(child:LoginAppBar(bgimage: const AssetImage("assets/images/register.jpg")) ,),
         SliverToBoxAdapter(
           child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Sign up",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Enter Your Name",
                      style: TextStyle(
                        fontSize: 20,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: userName,
                    decoration: const InputDecoration(
    enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(
    color: Colors.black,
    width: 2,
    style: BorderStyle.solid),),),

                ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Enter Your phone number",
                      style: TextStyle(
                        fontSize: 20,
                      ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: useridCntrl,
                    decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Colors.black,
                                width: 2,
                                style: BorderStyle.solid)),
                        suffixIcon: Icon(Icons.person_add_alt),
                        ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Enter Your EmailId",
                      style: TextStyle(
                        fontSize: 20,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: pwdCntrl,
                    decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Colors.black,
                                width: 2,
                                style: BorderStyle.solid)),
                        suffixIcon: Icon(Icons.password),

                  ),
                ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Enter Your passsword",
                      style: TextStyle(
                        fontSize: 20,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: confirmPwdCntrl,
                    decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Colors.black,
                                width: 2,
                                style: BorderStyle.solid)),
                        suffixIcon: Icon(Icons.password_rounded),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("confirm Your password",style: TextStyle(
                        fontSize: 20,
                      ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: confirmPwdCntrl,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid)),
                      suffixIcon: Icon(Icons.password_rounded),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all(
                            const Size.fromHeight(50)),
                        backgroundColor:
                        MaterialStateProperty.all(const Color(0xFF004D40))),
                    onPressed: () {
                      storeData();
                    },
                    child: const Text("CONTINUE"),
                  ),
                ),
              ],
            ),
        ),
         ),
    ],
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
        .push(MaterialPageRoute(builder: (context) => const ItemsPages()));
  }
}
