import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/models/quiz_questions.dart';
import 'package:quiz_app/styles.dart';

class QuestionScreen extends StatefulWidget {
  final Function(int) chooseAnswer;
  const QuestionScreen(this.chooseAnswer, {super.key});

  @override
  State<StatefulWidget> createState() => QuestionState();
}

class QuestionState extends State<QuestionScreen> {

  int currentQuestionIndex = 0;

  void updateIndex(String answerText) {
    widget.chooseAnswer(questions[currentQuestionIndex].answers.indexOf(answerText));
    if (currentQuestionIndex < (questions.length - 1)) {
      setState(() {
        currentQuestionIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              questions[currentQuestionIndex].questionText,
              style: GoogleFonts.jetBrainsMono(
                color: const Color.fromARGB(255, 201, 153, 251),
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30.0),
            ...questions[currentQuestionIndex]
                .shuffledAnswers()
                .map((e) => answerButton(e, updateIndex))
          ],
        ),
      ),
    );
  }
}
