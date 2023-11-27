import 'package:flutter/material.dart';
void main()

{
  runApp(MaterialApp(home: DrawerExamp(),));
}
class DrawerExamp extends StatelessWidget {
 // const DrawerExamp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatefulWidget {
  //const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selectedindex = 0;
  static const TextStyle optionStyle=TextStyle(fontWeight:FontWeight.bold,fontSize: 30);
  static const List<Widget> _widgetOptions=<Widget>[
    Text('Index 0: Home',style: optionStyle,),
    Text('Index 1: Business',style: optionStyle,),
    Text('Index 2: School',style: optionStyle,),
  ];
  void _onItemTapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("DrawerDemo"),),
      drawer: Drawer(
        child: ListView(padding:EdgeInsets.zero ,//to remove the padding we are assigning it into zero
            children: [//UserAccountsDrawerHeader(accountName: accountName, accountEmail: accountEmail)
              DrawerHeader(decoration:BoxDecoration(color: Colors.blue) ,
              child: Text("Drawer Header"),),
              ListTile(title: Text("Home"),
              selected: selectedindex==0,
              onTap:(){
                _onItemTapped(0);
                Navigator.pop(context);
              } ,),
              ListTile(title: Text("business"),
              selected: selectedindex==1,
              onTap: (){
                _onItemTapped(1);
                Navigator.pop(context);
              },),
              ListTile(title: Text("School"),
                selected: selectedindex==2,
                onTap: (){//updating the state of the app
                  _onItemTapped(2);
                  Navigator.pop(context);
                },),
        ],),
      ),
    body: Center(child:_widgetOptions[selectedindex]),);
  }
}

