import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: SocialPost()));
}

class SocialPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(elevation: 10.0,
        backgroundColor: Colors.blueGrey,
        title: const Text("Post"),
        //backgroundColor: Colors.black,
        centerTitle: true,
        leading: const Icon(Icons.home),
        actions: const [
          Icon(
            Icons.search,
          ),
          Padding(padding: EdgeInsets.all(20)),
          Icon(Icons.message)
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(elevation: 10.0,
              child: Column(
                children: [
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/mango.png"),
                    ),
                    title: Text(
                      "Sachin Tendulakar",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("!0 minutes ago"),
                    trailing: Icon(Icons.close),
                  ),
                  ListTile(title: Text("Happy birthday")),
                  const Image(
                    image: AssetImage("assets/images/happybirthday.jpg"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.thumb_up),
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.thumb_down)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Card(elevation: 10.0,
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/images8.jpg"),
                    ),
                    trailing: Icon(Icons.close),
                    title: Text("Dhoni"),
                    subtitle: Text("5 minutes ago"),
                  ),
                  ListTile(
                    title: Text("Had a wonderful vacation"),
                  ),
                  Image(
                    image: AssetImage("assets/images/images8.jpg"),
                  ),
                  Padding(padding: EdgeInsets.all(12.0)),
                  Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.thumb_up),
                      Padding(padding: EdgeInsets.all(10.0)),
                      Icon(Icons.thumb_down),
                    ],
                  ),
                ],
              ),
            ),
          ),

          const Padding(padding: EdgeInsets.all(12.0),
          child: Card(elevation:10.0 ,
            child: Column(children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/images5.jpg"),

                ),
                title: Text("Dhivya Dhanraj"),
                subtitle: Text("1 hour ago"),
                trailing: Icon(Icons.close),
              ),
              ListTile(title: Text("drenching in music!!!!!!!!"),),
              Image(image: AssetImage("assets/images/images1.jpg")),
              Padding(padding: EdgeInsets.all(12.0)),
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Text("Like"),
                Padding(padding: EdgeInsets.all(10.0)),
                Text("Dislike"),
              ],),
            ],),
          ),),

        ],
      ),
    );
  }
}
