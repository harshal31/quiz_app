import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget styledText(String text, double fontSize) {
  return Text(
    text,
    style: GoogleFonts.jetBrainsMono(
      color: const Color.fromARGB(255, 201, 153, 251),
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
    ),
    textAlign: TextAlign.center,
  );
}

Widget outlineButton(String text, IconData icon, void Function() onPressed) {
  return OutlinedButton.icon(
    icon: Icon(
      icon,
    ),
    style: OutlinedButton.styleFrom(
      foregroundColor: const Color.fromARGB(255, 237, 223, 252),
    ),
    onPressed: onPressed,
    label: Text(
      text,
      style: GoogleFonts.jetBrainsMono(
        color: const Color.fromARGB(255, 237, 223, 252),
        fontSize: 16.0,
      ),
    ),
  );
}

Widget answerButton(String answerText, Function(String answerText) answer) {
  return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
    ElevatedButton(
      onPressed: () => {answer(answerText)},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 33, 1, 95),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
        style: GoogleFonts.jetBrainsMono(
          color: Colors.white,
          fontSize: 14.0,
        ),
      ),
    ),
    const SizedBox(
      height: 10.0,
    )
  ]);
}

Widget questionAnswerText(String text, Color color) {
  return Text(
    text,
    style: GoogleFonts.jetBrainsMono(
      color: color,
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
    ),
    textAlign: TextAlign.start,
  );
}
