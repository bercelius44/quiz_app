class QuizQuestion {
  const QuizQuestion(this.qText, this.answers);

  final String qText;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
