class QuizQuestion {
  const QuizQuestion({
    required this.question,
    required this.correctAnswer,
    required this.options,
  });
  final String question;
  final int correctAnswer;
  final List<String> options;
}
