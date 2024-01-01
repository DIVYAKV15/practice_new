import 'package:flutter/material.dart';
import 'package:practice/assignments/farmerFreshZoneApp/view/ItemsPage.dart';
import 'package:practice/assignments/farmerFreshZoneApp/view/signup_page.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
import '../widgets/loginappbar.dart';

void main() {
  runApp(MaterialApp(
    home: FarmerLoginPage(),
  ));
}

class FarmerLoginPage extends StatefulWidget {
  FarmerLoginPage({super.key});

  @override
  State<FarmerLoginPage> createState() => _FarmerLoginPageState();
}

class _FarmerLoginPageState extends State<FarmerLoginPage> {
  // var userNameCntrl = TextEditingController();
  // var pwdCntrl = TextEditingController();
  // late bool loggedIn;

  // void initState() {
  //   // TODO: implement initState
  //   user_already_loggedIn();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              LoginAppBar(),
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    LoginAppBar(),
                    const Text("Log in/ Sign up",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      " Enter Your mobile number",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextField(
                      // controller: userNameCntrl,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            //borderRadius: BorderRadius.all(Radius.circular(30)

                            borderSide: BorderSide(
                                color: Colors.black12,
                                width: 3,
                                style: BorderStyle.solid)),
                        suffixIcon: Icon(Icons.person_add_alt),
                      ),
                    ),
                    //),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(
                                const Size.fromHeight(50)),
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xFF004D40))),
                        onPressed: () {
                          //here we have to go to otp page
                        },
                        child: const Text("CONTINUE",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20))),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Login with password",
                      style: TextStyle(
                          color: Color(0xFF33691E),
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    // TextField(
                    //   controller: pwdCntrl,
                    //   decoration: const InputDecoration(
                    //       enabledBorder: OutlineInputBorder(
                    //           borderRadius: BorderRadius.all(Radius.circular(30)),
                    //           borderSide: BorderSide(
                    //               color: Colors.black,
                    //               width: 2,
                    //               style: BorderStyle.solid)),
                    //       suffixIcon: Icon(Icons.password_rounded),
                    //       label: Text("PASSWORD",
                    //           style: TextStyle(color: Colors.red, fontSize: 17))),
                    // ),
                    const SizedBox(
                      height: 35,
                    ),
                    // MaterialButton(
                    //   shape: const StadiumBorder(
                    //     side: BorderSide(color: Colors.black),
                    //   ),
                    //   height: 50,
                    //   minWidth: 50,
                    //   color: Colors.grey,
                    //   onPressed: () {
                    //     validateLoginPage();
                    //   },
                    ElevatedButton(
                      style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(
                              const Size.fromHeight(50)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white)),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const FarmerSignUpPage()));
                      },
                      child: const Text("Signup",
                          style: TextStyle(
                              color: Color(0xFF004D40), fontSize: 25)),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    // TextButton(
                    //   onPressed: () {
                    //     Navigator.of(context).pushReplacement(MaterialPageRoute(
                    //         builder: (context) => FarmerSignUpPage()));
                    //   },
                    //   child: RichText(
                    //     text: const TextSpan(
                    //       children: [
                    //         TextSpan(
                    //             text: "Didn't have an account??",
                    //             style: TextStyle(
                    //               fontSize: 20,
                    //               color: Colors.red,
                    //             )),
                    //         TextSpan(
                    //             text: "SIGNUP",
                    //             style: TextStyle(
                    //                 fontSize: 20,
                    //                 color: Colors.red,
                    //                 fontWeight: FontWeight.bold))
                    //       ],
                    //     ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// void user_already_loggedIn() async {
//   final SharedPreferences prefs = await SharedPreferences.getInstance();
//   loggedIn = prefs.getBool('loggedIn') ?? false;
// }
//
// Future validateLoginPage() async {
//   final SharedPreferences prefs = await SharedPreferences.getInstance();
//   String? username = userNameCntrl.text.trim();
//   String? pwd = pwdCntrl.text.trim();
//   String? userId = prefs.getString('userId'); //to read the saved value
//   String? password = prefs.getString('password');
//   const errorMessage = 'username/password does not match';
//   if (username == userId && pwd == password) {
//     prefs.setBool("loggedIn", true);
//     Navigator.of(context)
//         .push(MaterialPageRoute(builder: (context) => ItemsPages()));
//   } else {
//     return errorMessage;
//   }
//   }
// }
