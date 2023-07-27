import 'package:flutter/material.dart';
import 'package:quiz_app/answer_screen.dart';
import 'package:quiz_app/models/quiz_questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() => _QuizState();
}


class _QuizState extends State<Quiz> {
  final List<int> userSelectedAnswerIndex = [];
  String screenID = "start-screen";

  void switchScreen() {
    setState(() {
      screenID = "question-screen";
    });
  }

  void chooseAnswer(int answerIndex) {
    userSelectedAnswerIndex.add(answerIndex);
    setState(() {
      if (userSelectedAnswerIndex.length == questions.length) {
        screenID = "answer-screen";
      }
    });
  }

  void restartQuiz() {
    setState(() {
      userSelectedAnswerIndex.clear();
      screenID = "start-screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen = StartScreen(switchScreen);
    if (screenID == "question-screen") {
      activeScreen = QuestionScreen(chooseAnswer);
    } else if (screenID == "answer-screen") {
      activeScreen = AnswerScreen(
          userSelectedAnswers: userSelectedAnswerIndex,
          restartQuiz: restartQuiz);
    }

    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurpleAccent, Colors.deepPurple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: activeScreen,
      )),
    );
  }
}
