import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          height: 80,
          decoration: const ShapeDecoration(
              color: Colors.green, shape: BeveledRectangleBorder()),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "FARMERS FRESH ZONE",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor:
                  MaterialStateProperty.all(Colors.green),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.location_on),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      "kochi",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.arrow_back_ios),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          height: 80,
          decoration: const ShapeDecoration(
              color: Colors.green, shape: BeveledRectangleBorder()),
          child: const SearchBar(
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(),
            ),
            hintText: "Search for Vegetables ,fruits..",
            leading: Icon(Icons.search),
          ),
        ),
      ],
    );
  }
}