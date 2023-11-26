import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  //const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz_rounded),
          ),
          title: const Text(
            "Chats",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            PopupMenuButton(
              padding: EdgeInsets.all(10),
              icon: Icon(
                Icons.add_circle,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(
                    child: ListTile(
                      tileColor: Colors.blueGrey,
                      subtitle: Text("Search name or number"),
                      leading: Icon(Icons.search),
                    ),
                  ),
                  const PopupMenuItem(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.people),
                        backgroundColor: Colors.blueGrey,
                      ),
                      title: Text(
                        "New Group",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      iconColor: Colors.blue,
                      textColor: Colors.blue,
                      tileColor: Colors.blueGrey,
                    ),
                  ),
                  PopupMenuItem(
                    child: ListView(
                      children: const [
                        ListTile(
                          leading: CircleAvatar(child: Icon(Icons.person)),
                          title: Text("NEw  BroadCast"),
                        ),
                        Text("New Contact"),
                        Text("New Community"),
                      ],
                    ),
                  ),
                ];
              },
            ),
          ],
          bottom:  TabBar(tabs: [
            Text("calls",style: GoogleFonts.openSans(
              fontWeight: FontWeight.bold,fontSize: 20,
            ),),
            Text("chats"),
            Text("settings"),
            Text("updates")
          ]),
        ),
        body: const TabBarView(children: [
          Text("calls"),
          Text("chats"),
          Text("Settings"),
          Text("updates")
        ]),
      ),
    );
  }
}
