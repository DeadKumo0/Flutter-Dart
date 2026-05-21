import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main_page.dart';

class HelloPage extends StatelessWidget {
  const HelloPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.only(
          top: 100,
          bottom: 40,
        ), // EdgeInsets.only
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: NetworkImage(
              'https://images.unsplash.com/photo-1564890369478-c89ca6d9cde9?w=800&fit=crop',
            ),
            fit: BoxFit.cover,
            opacity: 0.6,
            onError: (_, __) {},
          ), // DecorationImage
        ), // BoxDecoration
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: [
                Text(
                  'Лесной дом',
                  style: GoogleFonts.pacifico(
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ), // Text
                const SizedBox(height: 15),
                Text(
                  'Новое чайное пространство!',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                ), // Text
              ],
            ), // Column
            Material(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder:
                          (context, animation, secondaryAnimation) =>
                              const MainPage(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return FadeTransition(
                          opacity: animation,
                          child: child,
                        ); // FadeTransition
                      },
                    ), // PageRouteBuilder
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 35,
                  ), // EdgeInsets.symmetric
                  child: Text(
                    'Посмотреть'.toUpperCase(),
                    style: GoogleFonts.pacifico(
                      fontSize: 22,
                      color: Colors.white,
                      letterSpacing: 1,
                    ),
                  ), // Text
                ), // Container
              ), // InkWell
            ), // Material
          ], // <Widget>[]
        ), // Column
      ), // Container
    ); // Material
  }
}
