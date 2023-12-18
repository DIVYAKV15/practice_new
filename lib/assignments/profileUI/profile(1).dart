import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(home: Profile()),
  );
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back_ios),
              color: Colors.black),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.format_align_justify_sharp),
                color: Colors.black)
          ],
        ),
        body: Container(
          margin: const EdgeInsets.all(10),

          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/TaylorSwift.jpg"),
                  maxRadius: 50,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Wrap(
                  spacing: 30,
                  children: [
                    Image(
                      image: AssetImage(
                          "assets/icons/social-facebook-button-blue-icon.png"),
                      height: 40,
                      width: 50,
                    ),
                    Image(
                      image: AssetImage("assets/icons/Twitter-icon.png"),
                      height: 40,
                      width: 50,
                    ),
                    Image(
                      image: AssetImage("assets/icons/linkedin-icon.png"),
                      height: 40,
                      width: 50,
                    ),
                    Image(
                      image: AssetImage("assets/icons/web-github-icon.png"),
                      height: 40,
                      width: 50,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text("Dhivya Kv",
                    style: GoogleFonts.racingSansOne(fontSize: 35)),
                const Text(
                  "@webrror",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Mobile App Developer",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ListTile(
                          tileColor: Colors.grey,
                          shape: StadiumBorder(
                            side:
                                BorderSide(width: 2, style: BorderStyle.solid),
                          ),

                          leading: Icon(
                            Icons.privacy_tip_outlined,
                            size: 30,
                            color: Colors.black,
                          ),
                          title: Text(
                            "Profile",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ListTile(
                          tileColor: Colors.grey,
                          shape: StadiumBorder(
                            side:
                                BorderSide(width: 2, style: BorderStyle.solid),
                          ),
                          leading: Icon(
                            Icons.history,
                            size: 30,
                            color: Colors.black,
                          ),
                          title: Text(
                            "Purchase History",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ListTile(
                          shape: StadiumBorder(
                            side:
                                BorderSide(width: 2, style: BorderStyle.solid),
                          ),
                          tileColor: Colors.grey,
                          leading: Icon(
                            Icons.help,
                            size: 30,
                            color: Colors.black,
                          ),
                          title: Text(
                            "Help & Support",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ListTile(
                          tileColor: Colors.grey,
                          shape: StadiumBorder(
                            side:
                                BorderSide(width: 2, style: BorderStyle.solid),
                          ),
                          leading: Icon(
                            Icons.settings,
                            size: 30,
                            color: Colors.black,
                          ),
                          title: Text(
                            "Settings",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ListTile(
                          tileColor: Colors.grey,
                          shape: StadiumBorder(
                            side:
                                BorderSide(width: 2, style: BorderStyle.solid),
                          ),
                          leading: Icon(
                            Icons.person_add_alt,
                            size: 30,
                            color: Colors.black,
                          ),
                          title: Text(
                            "Invite a friend",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ListTile(
                          tileColor: Colors.grey,
                          shape: StadiumBorder(
                            side:
                                BorderSide(width: 2, style: BorderStyle.solid),
                          ),
                          leading: Icon(
                            Icons.logout,
                            size: 30,
                            color: Colors.black,
                          ),
                          title: Text(
                            "Logout",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
