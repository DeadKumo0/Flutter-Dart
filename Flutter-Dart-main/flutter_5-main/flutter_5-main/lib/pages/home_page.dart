import 'package:flutter/material.dart';
import '../widget/custom_bottom_bar.dart';
import '../widget/tab_bar_view_eat_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: const Color(0xFF232222),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ---- Верхние иконки ----
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.sort_rounded,
                          color: Colors.orange,
                          size: 35,
                        ), // Icon
                      ), // InkWell
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.search,
                          color: Colors.orange,
                          size: 35,
                        ), // Icon
                      ), // InkWell
                    ],
                  ), // Row
                ), // Padding

                const SizedBox(height: 30),

                // ---- Заголовок ----
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15),
                  child: const Text(
                    'Практическая работа',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ), // TextStyle
                  ), // Text
                ), // Padding

                const SizedBox(height: 5),

                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15),
                  child: const Text(
                    'Разработка МП',
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 22,
                    ), // TextStyle
                  ), // Text
                ), // Padding

                const SizedBox(height: 30),

                // ---- TabBar ----
                TabBar(
                  isScrollable: true,
                  dividerColor: Colors.transparent,
                  indicator: const BoxDecoration(),
                  labelStyle:
                      const TextStyle(fontSize: 20),
                  labelPadding: const EdgeInsets.symmetric(
                      horizontal: 10),
                  labelColor: Colors.orangeAccent,
                  unselectedLabelColor: Colors.white54,
                  tabs: const [
                    Tab(text: 'Фрукты 1'),
                    Tab(text: 'Фрукты 2'),
                    Tab(text: 'Фрукты 3'),
                    Tab(text: 'Фрукты 4'),
                  ],
                ), // TabBar

                // ---- TabBarView ----
                const Flexible(
                  child: TabBarView(
                    children: [
                      SingleChildScrollView(
                          child: TabBarViewEatWidget()),
                      SingleChildScrollView(
                          child: TabBarViewEatWidget()),
                      SingleChildScrollView(
                          child: TabBarViewEatWidget()),
                      SingleChildScrollView(
                          child: TabBarViewEatWidget()),
                    ],
                  ), // TabBarView
                ), // Flexible
              ], // children
            ), // Column
          ), // Padding
        ), // SafeArea
        bottomNavigationBar: const CustomBottomBar(),
      ), // Scaffold
    ); // DefaultTabController
  }
}
