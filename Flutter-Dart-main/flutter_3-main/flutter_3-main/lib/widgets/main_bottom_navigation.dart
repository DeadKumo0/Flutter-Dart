import 'package:flutter/material.dart';

class MainBottomNavigationBar extends StatefulWidget {
  const MainBottomNavigationBar({super.key});

  @override
  State<MainBottomNavigationBar> createState() =>
      _MainBottomNavigationBarState();
}

class _MainBottomNavigationBarState extends State<MainBottomNavigationBar> {
  int iconSelectedIndex = 0;
  List<IconData> icons = [
    Icons.home_outlined,
    Icons.search,
    Icons.add_box_outlined,
    Icons.person_outline,
    Icons.settings_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(20),
        color: Colors.black,
        child: Container(
          height: 70,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: icons.length,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    iconSelectedIndex = index;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  width: 35,
                  decoration: BoxDecoration(
                    border: index == iconSelectedIndex
                        ? const Border(
                            top: BorderSide(width: 3, color: Colors.white),
                          ) // Border
                        : null,
                    gradient: index == iconSelectedIndex
                        ? const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.grey,
                              Colors.black,
                            ],
                          ) // LinearGradient
                        : null,
                  ), // BoxDecoration
                  child: Icon(
                    icons[index],
                    size: 35,
                    color: index == iconSelectedIndex
                        ? Colors.white
                        : Colors.grey.shade800,
                  ), // Icon
                ), // AnimatedContainer
              ), // GestureDetector
            ), // Padding
          ), // ListView.builder
        ), // Container
      ), // Material
    ); // Padding
  }
}
