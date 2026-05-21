import 'package:flutter/material.dart';
import '../models/question.dart';

class QuizController extends ChangeNotifier {
  final List<Question> questions;
  int currentQuestionIndex = 0;
  int score = 0;

  QuizController(this.questions);

  void nextQuestion(int selectedAnswerIndex, BuildContext context) {
    if (questions[currentQuestionIndex].correctAnswerIndex ==
        selectedAnswerIndex) {
      score++;
    }
    if (currentQuestionIndex < questions.length - 1) {
      currentQuestionIndex++;
    } else {
      showResultDialog(context);
    }
    notifyListeners();
  }

  void resetQuiz() {
    currentQuestionIndex = 0;
    score = 0;
    notifyListeners();
  }

  bool get isQuizEnd => currentQuestionIndex == questions.length - 1;

  void showResultDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          'Результат',
          style: TextStyle(fontSize: 22),
        ), // Text
        content: Text(
          'Ваш счет: $score/${questions.length}',
          style: const TextStyle(fontSize: 20),
        ), // Text
        actions: [
          TextButton(
            onPressed: () {
              resetQuiz();
              Navigator.of(context).pop();
            },
            child: const Text(
              'Начать заново',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ), // Text
          ), // TextButton
        ],
      ), // AlertDialog
    );
  }
}
