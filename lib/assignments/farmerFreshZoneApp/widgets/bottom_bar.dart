import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(selectedItemColor:Colors.green ,
        items: const [
      BottomNavigationBarItem(
          icon: Icon(Icons.home, ),
          label: "Home",
          ),
      BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_rounded, ),
          label: "Cart",
        ),
      BottomNavigationBarItem(
          icon: Icon(Icons.person,),
          label: "Account",
          ),
    ]);
  }
}
