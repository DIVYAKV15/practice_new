import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(home: TabProfile()));
}

class TabProfile extends StatelessWidget {
  const TabProfile({super.key});

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
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/dhivi.jpg"),
                  maxRadius: 50,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: AssetImage(
                          "assets/icons/social-facebook-button-blue-icon.png"),
                      height: 30,
                      width: 50,
                    ),
                    Image(
                      image: AssetImage("assets/icons/Twitter-icon.png"),
                      height: 30,
                      width: 50,
                    ),
                    Image(
                      image: AssetImage("assets/icons/linkedin-icon.png"),
                      height: 30,
                      width: 50,
                    ),
                    Image(
                      image: AssetImage("assets/icons/web-github-icon.png"),
                      height: 30,
                      width: 50,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Text("DhivyaKv",
                    style: GoogleFonts.racingSansOne(fontSize: 30)),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "@webrror",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Mobile App Developer",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Positioned(
                  height: 300,
                  child: CarouselSlider(
                    items: [
                      Expanded(
                        child: ListView(
                          children: const [
                            ListTile(
                              shape: StadiumBorder(),
                              leading: Icon(Icons.privacy_tip_outlined),
                              title: Text("Profile"),
                              trailing: Icon(Icons.arrow_forward_ios),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ListTile(
                              shape: StadiumBorder(),
                              leading: Icon(Icons.history),
                              title: Text("Purchase History"),
                              trailing: Icon(Icons.arrow_forward_ios),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ListTile(
                              shape: StadiumBorder(),
                              leading: Icon(Icons.help),
                              title: Text("Help & Support"),
                              trailing: Icon(Icons.arrow_forward_ios),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ListTile(
                              shape: StadiumBorder(),
                              leading: Icon(Icons.settings),
                              title: Text("Settings"),
                              trailing: Icon(Icons.arrow_forward_ios),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ListTile(
                              shape: StadiumBorder(),

                              leading: Icon(Icons.logout),
                              title: Text("Logout"),
                              trailing: Icon(Icons.arrow_forward_ios),
                            ),
                          ],
                        ),
                      ),
                    ],
                    options: CarouselOptions(
                        aspectRatio: 6 / 9,
                        autoPlay: true,
                        scrollDirection: Axis.vertical,
                        autoPlayCurve: Curves.elasticInOut),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
