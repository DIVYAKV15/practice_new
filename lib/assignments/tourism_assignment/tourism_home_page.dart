import 'package:flutter/material.dart';
import 'package:practice/assignments/tourism_assignment/description.dart';
import 'package:practice/assignments/tourism_assignment/tourism_data.dart';

void main() {
  runApp(MaterialApp(
    home: const TourismHomePage(),
    routes: {"description": (context) => DescriptionPage()},
  ));
}

class TourismHomePage extends StatelessWidget {
  const TourismHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
     title: const Text("Popular",style: TextStyle(fontSize: 30, color: Colors.white),), ),
      body: ListView(
        children: tourism
            .map(
              (e) => Container(
                height: 200,
                width: 450,
                padding: const EdgeInsets.only(top: 10, left: 5, right: 10),
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap: () => gotoDescription(context, e["id"]),
                      child: Container(
                          decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                            e["images"],
                          ),
                          fit: BoxFit.fill,
                        ),
                      )),
                    ),
                    Positioned(
                      left: 10,
                      top: 120,
                      child: Text(
                        e["name"],
                        style: const TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  void gotoDescription(BuildContext context, id) {
    Navigator.pushNamed(context, "description", arguments: id);
  }
}
// Column(children:[
// const Text("Popular",
// style: TextStyle(
// fontSize: 30, color: Colors.deepPurple),),
//
// //margin: EdgeInsets.all(5),
