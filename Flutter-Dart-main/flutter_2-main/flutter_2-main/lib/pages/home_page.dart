import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';
import '../widgets/home_main_content.dart';

// Красивые изображения с Unsplash (8 штук)
const List<String> _images = [
  'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=400&h=400&fit=crop',
  'https://images.unsplash.com/photo-1501854140801-50d01698950b?w=400&h=400&fit=crop',
  'https://images.unsplash.com/photo-1518495973542-4542c06a5843?w=400&h=400&fit=crop',
  'https://images.unsplash.com/photo-1469474968028-56623f02e42e?w=400&h=400&fit=crop',
  'https://images.unsplash.com/photo-1441974231531-c6227db76b6e?w=400&h=400&fit=crop',
  'https://images.unsplash.com/photo-1472214103451-9374bd1c798e?w=400&h=400&fit=crop',
  'https://images.unsplash.com/photo-1475924156734-496f6cac6ec1?w=400&h=400&fit=crop',
  'https://images.unsplash.com/photo-1500534314209-a25ddb2bd429?w=400&h=400&fit=crop',
];

// Фоновое изображение
const String _bgImage =
    'https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?w=800&fit=crop';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(
              Icons.notes,
              color: Colors.white,
            ), // Icon
          ), // IconButton
        ), // Builder
        backgroundColor: Colors.black,
        title: const Text(
          'ПР-1-1-2',
          style: TextStyle(color: Colors.white),
        ), // Text
        centerTitle: true,
        actions: const [
          Icon(
            Icons.info_outline,
            color: Colors.white,
          ), // Icon
          SizedBox(width: 15),
          Icon(
            Icons.games_outlined,
            color: Colors.white,
          ), // Icon
          SizedBox(width: 10),
        ],
      ), // AppBar
      drawer: const MainDrawer(),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(_bgImage),
              fit: BoxFit.cover,
            ), // DecorationImage
          ), // BoxDecoration
          child: Column(
            children: <Widget>[
              HomeMainContent(
                imageUrlPathOne: _images[0],
                imageUrlPathTwo: _images[1],
              ), // HomeMainContent
              HomeMainContent(
                imageUrlPathOne: _images[2],
                imageUrlPathTwo: _images[3],
              ), // HomeMainContent
              HomeMainContent(
                imageUrlPathOne: _images[4],
                imageUrlPathTwo: _images[5],
              ), // HomeMainContent
              HomeMainContent(
                imageUrlPathOne: _images[6],
                imageUrlPathTwo: _images[7],
              ), // HomeMainContent
            ], // <Widget>[]
          ), // Column
        ), // Container
      ), // SingleChildScrollView
    ); // Scaffold
  }
}
