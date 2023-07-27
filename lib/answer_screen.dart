import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answer_item/AnswerRow.dart';
import 'package:quiz_app/models/quiz_questions.dart';
import 'package:quiz_app/styles.dart';

class AnswerScreen extends StatelessWidget {
  List<int> userSelectedAnswers = [];
  final void Function() restartQuiz;

  AnswerScreen(
      {super.key,
      required this.userSelectedAnswers,
      required this.restartQuiz});

  @override
  Widget build(BuildContext context) {
    int totalQuestions = questions.length;
    int correctAnswers =
        userSelectedAnswers.where((element) => element == 0).length;

    return Center(
      child: Container(
        margin: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answered $correctAnswers out of $totalQuestions questions correctly!",
              style: GoogleFonts.jetBrainsMono(
                color: const Color.fromARGB(255, 230, 200, 253),
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30.0),
            AnswerInfo(userSelectedAnswers),
            const SizedBox(height: 30.0),
            outlineButton("Restart Quiz", Icons.restart_alt_outlined, restartQuiz)
          ],
        ),
      ),
    );
  }
}
