import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../pages/detail_page.dart';

class ItemTeaWidget extends StatelessWidget {
  const ItemTeaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Используем сетевые изображения вместо assets
    final List<Map<String, String>> teaItems = [
      {
        'name': 'Зеленый чай',
        'sub': 'Лучший чай',
        'image':
            'https://cdn-icons-png.flaticon.com/512/2935/2935443.png',
        'price': '99',
      },
      {
        'name': 'Зеленый чай',
        'sub': 'Лучший чай',
        'image':
            'https://cdn-icons-png.flaticon.com/512/2935/2935443.png',
        'price': '99',
      },
      {
        'name': 'Зеленый чай',
        'sub': 'Лучший чай',
        'image':
            'https://cdn-icons-png.flaticon.com/512/2935/2935443.png',
        'price': '99',
      },
      {
        'name': 'Зеленый чай',
        'sub': 'Лучший чай',
        'image':
            'https://cdn-icons-png.flaticon.com/512/2935/2935443.png',
        'price': '99',
      },
    ];

    return GridView.count(
      crossAxisCount: 2,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      childAspectRatio: (150 / 195),
      children: <Widget>[
        for (int i = 0; i < teaItems.length; i++)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 13),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFF212325),
              boxShadow: [
                BoxShadow(
                  color: Colors.green.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 8,
                ), // BoxShadow
              ],
            ), // BoxDecoration
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      PageRouteBuilder(
                        pageBuilder:
                            (context, animation, secondaryAnimation) =>
                                DetailPage(
                          detailImage: teaItems[i]['image']!,
                          teaName: teaItems[i]['name']!,
                          teaSub: teaItems[i]['sub']!,
                          teaPrice: teaItems[i]['price']!,
                        ), // DetailPage
                        transitionsBuilder: (context, animation,
                            secondaryAnimation, child) {
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          ); // FadeTransition
                        },
                      ), // PageRouteBuilder
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Image.network(
                      teaItems[i]['image']!,
                      width: 120,
                      height: 120,
                      fit: BoxFit.contain,
                      color: Colors.green,
                      errorBuilder: (_, __, ___) => const Icon(
                        Icons.local_cafe,
                        size: 80,
                        color: Colors.green,
                      ),
                    ), // Image.network
                  ), // Container
                ), // InkWell
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text(
                          teaItems[i]['name']!,
                          style: GoogleFonts.pacifico(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ), // Text
                        const SizedBox(height: 4),
                        Text(
                          teaItems[i]['sub']!,
                          style: GoogleFonts.pacifico(
                            color: Colors.white60,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.center,
                        ), // Text
                      ],
                    ), // Column
                  ), // Align
                ), // Padding
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '${teaItems[i]['price']} ₽',
                        style: GoogleFonts.pacifico(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ), // Text
                      Text(
                        '< 1 >',
                        style: GoogleFonts.pacifico(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ), // Text
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20),
                        ), // BoxDecoration
                        child: const Icon(
                          Icons.add,
                          size: 20,
                          color: Colors.white,
                        ), // Icon
                      ), // Container
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
