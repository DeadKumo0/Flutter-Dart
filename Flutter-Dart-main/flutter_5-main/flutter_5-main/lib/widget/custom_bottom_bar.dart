import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration: BoxDecoration(
        color: const Color(0xFF232227),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 8,
          ), // BoxShadow
        ],
      ), // BoxDecoration
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Icon(
            Icons.person,
            size: 35,
            color: Colors.orange,
          ), // Icon
          const Icon(
            Icons.search_outlined,
            size: 35,
            color: Colors.white54,
          ), // Icon
          // Активная кнопка корзины (выделена оранжевым)
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 6,
                ), // BoxShadow
              ],
            ), // BoxDecoration
            child: const Icon(
              CupertinoIcons.cart_fill,
              color: Colors.white,
              size: 30,
            ), // Icon
          ), // Container
          const Icon(
            Icons.notification_add_outlined,
            size: 35,
            color: Colors.white54,
          ), // Icon
          const Icon(
            Icons.settings_outlined,
            size: 35,
            color: Colors.white54,
          ), // Icon
        ], // <Widget>[]
      ), // Row
    ); // Container
  }
}
