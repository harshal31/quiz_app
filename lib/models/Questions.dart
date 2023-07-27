class QuizQuestion {
  final String questionText;
  final List<String> answers;

  QuizQuestion(this.questionText, this.answers);

  List<String> shuffledAnswers() {
    var answerList = List.of(answers);
    answerList.shuffle();
    return answerList;
  }
}
