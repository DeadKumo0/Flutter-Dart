import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/question.dart';
import 'services/quiz_controller.dart';
import 'pages/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => QuizController(questions),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter PR Task - 1-1-3',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ), // ThemeData
        home: const SplashScreen(),
      ), // MaterialApp
    ); // ChangeNotifierProvider
  }
}
