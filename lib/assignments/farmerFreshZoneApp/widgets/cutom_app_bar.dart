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
          padding: const EdgeInsets.all(12),
          height: 60,
          decoration: const ShapeDecoration(
              color: Colors.green, shape: BeveledRectangleBorder()),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              const Text(
                "FARMERS FRESH ZONE",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                height: 5,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor:
                  MaterialStateProperty.all(Colors.green),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.location_on,color: Colors.white,),


                    Text(
                      "kochi",
                      style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.arrow_back_ios,color: Colors.white),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          height: 70,
          decoration: const ShapeDecoration(
              color: Colors.green, shape: BeveledRectangleBorder()),
          child:  SearchBar(backgroundColor: MaterialStateProperty.all(Colors.white),
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