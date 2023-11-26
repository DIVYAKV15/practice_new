import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridUI(),
  ));
}

class GridUI extends StatelessWidget {
  var icons = [
    Icons.home,
    Icons.doorbell,
    Icons.camera_alt_outlined,
    Icons.stars,
    Icons.snapchat,
    Icons.phone,
    Icons.mic_off_outlined,
    Icons.hail,
    Icons.ac_unit,
    Icons.abc,
    Icons.ad_units_outlined,
    Icons.abc_sharp,
  ];
  var color = [
    Colors.blue,
    Colors.orange,
    Colors.yellow,
    Colors.red,
    Colors.pink,
    Colors.brown,
    Colors.yellow,
    Colors.purple,
    Colors.teal,
    Colors.grey,
    Colors.greenAccent,
    Colors.blue,
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid Ui"),
      ),
      body: GridView.custom(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.98,
            mainAxisSpacing: 30,
            crossAxisSpacing: 20),
        childrenDelegate: SliverChildListDelegate(
          List.generate(
            12,
            (index) => Card(
              margin: const EdgeInsets.all(20.0),
              color: color[index],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80)),
              //shape: StadiumBorder(side: BorderSide(color: color[index],width: 10.0)),
              //shape:BeveledRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(icons[index]),
                  const Text("Heart \nShaper")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
