import 'package:flutter/material.dart';
import 'package:quiz_app/styles.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 80.0),
          styledText("Learn Flutter the fun way!", 24.0),
          const SizedBox(height: 30.0),
          outlineButton("Start Quiz", Icons.arrow_right_alt, switchScreen)
        ],
      ),
    );
  }
}
