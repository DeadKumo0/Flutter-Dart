import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TabBarViewEatWidget extends StatelessWidget {
  const TabBarViewEatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Сетевые изображения персиков вместо assets
    const String peachUrl =
        'https://cdn-icons-png.flaticon.com/512/590/590685.png';

    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 0.76,
      physics: const NeverScrollableScrollPhysics(),
      children: <Widget>[
        for (int i = 1; i < 7; i++)
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            margin:
                const EdgeInsets.symmetric(vertical: 8, horizontal: 13),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFF232227),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 8,
                ), // BoxShadow
              ],
            ), // BoxDecoration
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('detailPage');
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Image.network(
                      peachUrl,
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => const Icon(
                        Icons.circle,
                        size: 80,
                        color: Colors.orangeAccent,
                      ),
                    ), // Image.network
                  ), // Container
                ), // InkWell
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Персик № $i',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ), // Text
                  ), // Container
                ), // Padding
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Персик № $i!',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white60,
                    ),
                  ), // Text
                ), // Container
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        '75 ₽',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.yellowAccent,
                        ),
                      ), // Text
                      const Icon(
                        CupertinoIcons.cart_badge_plus,
                        size: 27,
                        color: Colors.greenAccent,
                      ), // Icon
                    ], // <Widget>[]
                  ), // Row
                ), // Padding
              ], // <Widget>[]
            ), // Column
          ), // Container
      ], // <Widget>[]
    ); // GridView.count
  }
}
