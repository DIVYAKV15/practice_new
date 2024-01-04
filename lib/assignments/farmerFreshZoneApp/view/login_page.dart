import 'package:flutter/material.dart';
import 'package:practice/assignments/farmerFreshZoneApp/view/ItemsPage.dart';
import 'package:practice/assignments/farmerFreshZoneApp/view/signup_page.dart';
// import 'package:shared_preferences/shared_preferences.dart';

import '../widgets/loginappbar.dart';

void main() {
  runApp( MaterialApp(
    home: FarmerLoginPage(),
  ));
}

class FarmerLoginPage extends StatelessWidget {
   FarmerLoginPage({super.key});

var phoneController=TextEditingController();

var formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(slivers: [
          SliverToBoxAdapter(child: LoginAppBar(bgimage:const AssetImage("assets/images/login.jpg"),),),
           SliverToBoxAdapter(
             child: Form(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                 children: [
                  // const LoginAppBar(),
                   const Padding(
                     padding: EdgeInsets.all(12.0),
                     child: Text("Log in/ Sign up",
                         style: TextStyle(
                             fontSize: 20, fontWeight: FontWeight.bold)),
                   ),

                   const Padding(
                     padding: EdgeInsets.all(12.0),
                     child: Text(
                       " Enter Your mobile number",
                       style: TextStyle(fontSize: 20),
                     ),
                   ),

                   Padding(
                     padding: const EdgeInsets.all(12.0),
                     child: TextFormField(validator: (phoneNumber){
                       if(phoneNumber!.isEmpty && phoneNumber.length<10)
                         {
                           return "please enter a valid number";
                           //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please enter valid inputs..!!"), ));
                         }
                       else
                         {
                           return null;
                         }
                     },
                        controller: phoneController,
                       decoration: const InputDecoration(
                         enabledBorder: OutlineInputBorder(
                             borderSide: BorderSide(
                                 color: Colors.black12,
                                 width: 3,
                                 style: BorderStyle.solid)),
                         suffixIcon: Icon(Icons.person_add_alt),
                       ),
                     ),
                   ),

                   // const SizedBox(
                   //   height: 20,
                   // ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: ElevatedButton(
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
                   ),

                   const Padding(
                     padding: EdgeInsets.all(12.0),
                     child: Text(
                       "Login with password",
                       style: TextStyle(
                           color: Color(0xFF33691E),
                           fontWeight: FontWeight.bold,
                           fontSize: 15),
                     ),
                   ),



                   Padding(
                     padding: const EdgeInsets.all(12.0),
                     child: ElevatedButton(
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
           ),
      ],
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
