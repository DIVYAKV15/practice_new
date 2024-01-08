import 'package:flutter/material.dart';

import 'hotel_data.dart';

void main() {
  runApp(const MaterialApp(
    home: Hotel(),
  ));
}

class Hotel extends StatelessWidget {
  const Hotel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const ListTile(
          title: Text(
            "HI",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            "FInd Your Favourite Hotel",
            style: TextStyle(fontSize: 20),
          ),
          trailing: CircleAvatar(),
        ),
        bottom: AppBar(
          title: Container(
            margin: const EdgeInsets.all(10),
            child: const SearchBar(
              padding: MaterialStatePropertyAll(
                EdgeInsets.all(5),
              ),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
              hintText: "Search your favourite hotel..",
              leading: Icon(Icons.search),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 450,
          width: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 15),
                child: Text(
                  ' Popular Hotels ',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 270,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: hotel_data
                      .map(
                        (e) => Card(
                          clipBehavior: Clip.hardEdge,
                          color: Colors.white54,
                          elevation: 2,
                          margin: const EdgeInsets.fromLTRB(10, 0, 2, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 150,
                                width: 200,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(e["images"]),
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Text(
                                "${e["name"]}",
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "${e["star"]}",
                                style: const TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "${e["price"]}",
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  ),
                                  const SizedBox(
                                    width: 45,
                                  ),
                                  Text(
                                    "${e["rating"]}",
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  ),
                                  const Icon(Icons.star, color: Colors.blue),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Hotel Packages",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "View All",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
