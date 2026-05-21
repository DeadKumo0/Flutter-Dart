import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration: BoxDecoration(
        color: const Color(0xFF212325),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 8,
          ), // BoxShadow
        ],
      ), // BoxDecoration
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            Icons.home,
            color: Colors.green,
            size: 35,
          ), // Icon
          Icon(
            Icons.chat_outlined,
            color: Colors.white,
            size: 30,
          ), // Icon
          Icon(
            Icons.food_bank_outlined,
            color: Colors.white,
            size: 30,
          ), // Icon
          Icon(
            Icons.person_outline,
            color: Colors.white,
            size: 30,
          ), // Icon
        ], // <Widget>[]
      ), // Row
    ); // Container
  }
}
