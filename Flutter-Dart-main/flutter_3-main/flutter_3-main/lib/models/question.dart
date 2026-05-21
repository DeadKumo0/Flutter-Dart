class Question {
  final String text;
  final List<String> options;
  final int correctAnswerIndex;

  Question({
    required this.text,
    required this.options,
    required this.correctAnswerIndex,
  });
}

final List<Question> questions = [
  Question(
    text: 'Какой язык программирования используется в Flutter?',
    options: ['Dart', 'Java', 'Swift', 'Kotlin'],
    correctAnswerIndex: 0,
  ),
  Question(
    text: 'Какая компания разработала Flutter?',
    options: ['Google', 'Apple', 'Microsoft', 'Facebook'],
    correctAnswerIndex: 0,
  ),
  Question(
    text: 'Какой фреймворк используется для разработки iOS приложений?',
    options: ['Flutter', 'React Native', 'SwiftUI', 'Xamarin'],
    correctAnswerIndex: 2,
  ),
];
