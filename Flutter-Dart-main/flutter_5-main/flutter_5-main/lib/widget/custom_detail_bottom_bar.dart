import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CustomDetailBottomBar extends StatelessWidget {
  final int total;

  const CustomDetailBottomBar({super.key, required this.total});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Итого:',
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ), // TextStyle
              ), // Text
              const SizedBox(height: 10),
              Text(
                '$total ₽',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ), // TextStyle
              ), // Text
            ], // <Widget>[]
          ), // Column
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(
                  vertical: 15, horizontal: 20),
              decoration: const BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ), // BorderRadius.only
              ), // BoxDecoration
              child: Row(
                children: <Widget>[
                  const Text(
                    'Оплатить',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ), // TextStyle
                  ), // Text
                  const SizedBox(width: 10),
                  const Icon(
                    CupertinoIcons.cart_fill,
                    color: Colors.white,
                    size: 30,
                  ), // Icon
                ], // <Widget>[]
              ), // Row
            ), // Container
          ), // InkWell
        ], // <Widget>[]
      ), // Row
    ); // Container
  }
}
