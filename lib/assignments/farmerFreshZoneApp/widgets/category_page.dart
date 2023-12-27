import 'package:flutter/material.dart';
import 'package:practice/assignments/farmerFreshZoneApp/model/data_page.dart';

void main() {
  runApp(const MaterialApp(home: CategoryPage()));
}

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 3,
          childAspectRatio: 2 / 3),
      // itemBuilder: (BuildContext context, int index) {
      children: category
          .map((e) => ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                child: Container(
                  height: 150,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      Container(
                        foregroundDecoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        height: 120,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                e["images"],
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        decoration: const BoxDecoration(),
                        child: Text(
                          e["name"],
                          style: const TextStyle(
                              fontSize: 20, color: Colors.black),
                          maxLines: 2,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ))
          .toList(),
    );
  }
}
