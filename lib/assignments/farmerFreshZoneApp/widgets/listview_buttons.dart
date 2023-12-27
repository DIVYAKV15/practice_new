import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowButtons extends StatelessWidget {
  var name = [
    "OFFERS",
    "VEGETABLES",
    "fRUITS",
    "EXOTIC",
    "FRESH CUTS",
    'NUTRITION CHARGES',
    "PACKED FLAVORS",
    "GOURMET SALADS"
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.separated(
        shrinkWrap: true,
        itemCount: name.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => MaterialButton(
              color: const Color(0xFFC8E6C9),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              onPressed: () {},
              child: Text(name[index],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.green)),
            ),
        separatorBuilder: (context, index) => const SizedBox(
              width: 10,
            ));
  }
}
