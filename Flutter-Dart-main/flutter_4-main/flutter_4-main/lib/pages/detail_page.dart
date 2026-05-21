import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DetailPage extends StatefulWidget {
  final String detailImage;
  final String teaName;
  final String teaSub;
  final String teaPrice;

  const DetailPage({
    super.key,
    required this.detailImage,
    required this.teaName,
    required this.teaSub,
    required this.teaPrice,
  });

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _count = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212325),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                // ---- Кнопка назад ----
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.green,
                    ), // Icon
                  ), // InkWell
                ), // Padding

                const SizedBox(height: 50),

                // ---- Изображение чая ----
                Center(
                  child: Image.network(
                    widget.detailImage,
                    width: MediaQuery.of(context).size.width / 1.2,
                    color: Colors.green,
                    fit: BoxFit.contain,
                    errorBuilder: (_, __, ___) => Icon(
                      Icons.local_cafe,
                      size: 180,
                      color: Colors.green.withOpacity(0.8),
                    ),
                  ), // Image.network
                ), // Center

                const SizedBox(height: 50),

                // ---- Название и счётчик ----
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        widget.teaSub,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.4),
                          letterSpacing: 3,
                        ),
                      ), // Text

                      const SizedBox(height: 20),

                      Text(
                        widget.teaName,
                        style: const TextStyle(
                          fontSize: 30,
                          letterSpacing: 1,
                          color: Colors.white,
                        ),
                      ), // Text

                      const SizedBox(height: 25),

                      // Счётчик и цена
                      // ignore: sized_box_for_whitespace
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(15),
                              width: 120,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white.withOpacity(0.2),
                                ), // Border.all
                                borderRadius: BorderRadius.circular(20),
                              ), // BoxDecoration
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      if (_count > 1) {
                                        setState(() => _count--);
                                      }
                                    },
                                    child: const Icon(
                                      CupertinoIcons.minus,
                                      size: 18,
                                      color: Colors.white,
                                    ), // Icon
                                  ),
                                  const SizedBox(width: 15),
                                  Text(
                                    '$_count',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ), // Text
                                  const SizedBox(width: 15),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() => _count++);
                                    },
                                    child: const Icon(
                                      CupertinoIcons.plus,
                                      size: 18,
                                      color: Colors.white,
                                    ), // Icon
                                  ),
                                ], // <Widget>[]
                              ), // Row
                            ), // Container
                            Text(
                              '${widget.teaPrice} ₽',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ), // Text
                          ], // <Widget>[]
                        ), // Row
                      ), // Container

                      const SizedBox(height: 20),

                      const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white38,
                        ),
                      ), // Text

                      const SizedBox(height: 30),

                      // ---- Кнопки Заказать и Избранное ----
                      // ignore: sized_box_for_whitespace
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 50,
                                vertical: 20,
                              ), // EdgeInsets.symmetric
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 50, 52, 56),
                                borderRadius: BorderRadius.circular(18),
                              ), // BoxDecoration
                              child: const Text(
                                'Заказать',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                ),
                              ), // Text
                            ), // Container
                            Container(
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(18),
                              ), // BoxDecoration
                              child: const Icon(
                                Icons.favorite_outline,
                                color: Colors.white,
                              ), // Icon
                            ), // Container
                          ], // <Widget>[]
                        ), // Row
                      ), // Container
                    ], // <Widget>[]
                  ), // Column
                ), // Padding
              ], // <Widget>[]
            ), // Column
          ), // Padding
        ), // SafeArea
      ), // SingleChildScrollView
    ); // Scaffold
  }
}
