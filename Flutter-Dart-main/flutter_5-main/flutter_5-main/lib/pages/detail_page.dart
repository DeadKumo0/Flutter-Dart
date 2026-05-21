import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widget/custom_detail_bottom_bar.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _count = 2;
  final int _price = 75;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF232227),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 25, left: 10, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // ---- Верхняя панель ----
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                    size: 32,
                  ), // Icon
                ), // InkWell
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    CupertinoIcons.cart_fill,
                    color: Colors.orange,
                    size: 32,
                  ), // Icon
                ), // InkWell
              ], // <Widget>[]
            ), // Row

            // ---- Изображение ----
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https://images.unsplash.com/photo-1629828874663-df5d1e25e7f5?w=600&fit=crop',
                  height: MediaQuery.of(context).size.height / 1.7,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, progress) {
                    if (progress == null) return child;
                    return Container(
                      height: MediaQuery.of(context).size.height / 1.7,
                      color: Colors.grey.shade800,
                      child: const Center(
                        child: CircularProgressIndicator(
                            color: Colors.orange),
                      ),
                    );
                  },
                  errorBuilder: (_, __, ___) => Container(
                    height: MediaQuery.of(context).size.height / 1.7,
                    color: Colors.grey.shade800,
                    child: const Icon(
                      Icons.image_not_supported,
                      size: 80,
                      color: Colors.white38,
                    ),
                  ),
                ), // ClipRRect
              ), // Padding
            ),

            const SizedBox(height: 10),

            // ---- Название и счётчик ----
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'Персик № 1',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ), // TextStyle
                      ), // Text

                      // Счётчик -  2  +
                      Row(
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              if (_count > 1) {
                                setState(() => _count--);
                              }
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(5),
                              ), // BoxDecoration
                              child: const Icon(
                                CupertinoIcons.minus,
                                size: 20,
                                color: Colors.orangeAccent,
                              ), // Icon
                            ), // Container
                          ), // InkWell
                          const SizedBox(width: 8),
                          Text(
                            '$_count',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ), // TextStyle
                          ), // Text
                          const SizedBox(width: 8),
                          InkWell(
                            onTap: () {
                              setState(() => _count++);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(5),
                              ), // BoxDecoration
                              child: const Icon(
                                CupertinoIcons.plus,
                                size: 20,
                                color: Colors.orangeAccent,
                              ), // Icon
                            ), // Container
                          ), // InkWell
                        ], // <Widget>[]
                      ), // Row
                    ], // <Widget>[]
                  ), // Row
                ), // Padding

                const SizedBox(height: 15),

                Text(
                  'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',
                  style: const TextStyle(
                    color: Colors.white60,
                    fontSize: 18,
                  ), // TextStyle
                ), // Text
              ], // <Widget>[]
            ), // Column
          ], // <Widget>[]
        ), // Column
      ), // Padding
      bottomNavigationBar:
          CustomDetailBottomBar(total: _count * _price),
    ); // Scaffold
  }
}
