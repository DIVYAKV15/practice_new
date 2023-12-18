import 'package:flutter/material.dart';
import 'package:practice/assignments/tourism_assignment/tourism_data.dart';
import 'package:practice/assignments/tourism_assignment/tourism_home_page.dart';

class DescriptionPage extends StatefulWidget {
  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  // var germanyImage = [
  //   "assets/images/germany(1).jpg",
  //   "assets/images/germany(2).jpg",
  //   "assets/images/germany(3).jpg"
  // ];

  //const DescriptionPage({super.key});
  @override
  Widget build(BuildContext context) {
    final tappedId = ModalRoute.of(context)?.settings.arguments;
    final tourismPage = tourism.firstWhere((e) => e["id"] == tappedId);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => TourismHomePage()));
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                width: 450,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(tourismPage["images"]),
                        fit: BoxFit.fill)),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                tourismPage["name"],
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(tourismPage["Description"],
                  style: const TextStyle(
                    fontSize: 20,
                  )),
              const SizedBox(
                height: 15,
              ),
              const Text("places to visit",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(child: Image.asset(tourismPage["places1"])),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(child: Image.asset(tourismPage["places2"])),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(child: Image.asset(tourismPage["places3"])),
                  const SizedBox(
                    width: 5,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: MaterialButton(
                  color: Colors.deepPurple,
                  shape: const StadiumBorder(),
                  height: 60,
                  onPressed: () {},
                  child: const Text("Pass To explore",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
