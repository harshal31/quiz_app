import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/models/quiz_questions.dart';
import 'package:quiz_app/styles.dart';

class AnswerInfo extends StatelessWidget {


  List<int> correctAnswers = [];

  AnswerInfo(this.correctAnswers, {super.key});

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 400,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (int i = 0; i < correctAnswers.length; ++i)
                answerItem(i, correctAnswers)
            ],
          ),
        ),
      );
}

Widget answerItem(int index, List<int> correctAnswers) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      numberWithCircle(index + 1, correctAnswers[index] == 0),
      const SizedBox(width: 20),
      quizQuestionAnswerItem(index, correctAnswers)
    ],
  );
}

Widget numberWithCircle(int number, bool isCorrectAnswer) {
  String numString = number.toString();
  return Container(
    width: 30,
    height: 30,
    alignment: Alignment.center,
    decoration: BoxDecoration(
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 150, 198, 241)
            : const Color.fromARGB(255, 249, 133, 241),
        borderRadius: BorderRadius.circular(100)),
    child: Text(
      numString,
      style: const TextStyle(
        fontWeight: FontWeight.w900,
        color: Color.fromARGB(255, 22, 2, 56),
      ),
      textAlign: TextAlign.center,
    ),
  );
}

Widget quizQuestionAnswerItem(int index, List<int> correctAnswers) {
  return Expanded(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          questions[index].questionText,
          style: GoogleFonts.jetBrainsMono(
            color: Colors.white,
            fontSize: 16.0,
          ),
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 5),
        questionAnswerText(questions[index].answers[correctAnswers[index]],
            const Color.fromARGB(255, 202, 171, 252)),
        questionAnswerText(questions[index].answers[0],
            const Color.fromARGB(255, 181, 254, 246)),
        const SizedBox(height: 5)
      ],
    ),
  );
}
