import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/quiz_controller.dart';
import '../widgets/main_drawer.dart';
import '../widgets/main_bottom_navigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final controller = context.watch<QuizController>();
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
          'ПР-1-1-3',
          style: TextStyle(color: Colors.white),
        ), // Text
        centerTitle: true,
        actions: const [
          Icon(
            Icons.person_outline,
            color: Colors.white,
          ), // Icon
          SizedBox(width: 15),
          Icon(
            Icons.notification_important_outlined,
            color: Colors.redAccent,
          ), // Icon
          SizedBox(width: 10),
        ],
      ), // AppBar
      drawer: const MainDrawer(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Вопрос
              Text(
                controller
                    .questions[controller.currentQuestionIndex].text,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ), // Text
              const SizedBox(height: 20),
              // Варианты ответов
              ...controller
                  .questions[controller.currentQuestionIndex].options
                  .map((option) {
                int index = controller
                    .questions[controller.currentQuestionIndex].options
                    .indexOf(option);
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ElevatedButton(
                    onPressed: () =>
                        controller.nextQuestion(index, context),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15,
                      ), // EdgeInsets.symmetric
                      textStyle: const TextStyle(fontSize: 24),
                    ),
                    child: Text(option),
                  ), // ElevatedButton
                ); // Padding
              }),
              const SizedBox(height: 20),
            ],
          ), // Column
        ), // Padding
      ), // Center
      bottomNavigationBar: const MainBottomNavigationBar(),
    ); // Scaffold
  }
}
