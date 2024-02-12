import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../additionalpage//answers.dart';
import '../additionalpage/questions.dart';

class QuizPage extends StatelessWidget {
  final List questions;
  final int questionIndex;
  final void Function(int score) onPressed;

  const QuizPage({
    super.key,
    required this.questions,
    required this.questionIndex,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Question(
            question: (questions[questionIndex]['questionText'] as String),
          ),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map((e) => Answers(
                    answer: e['text'] as String,
                    onPressed: () => onPressed(e['score'] as int),
                  ))
              .toList(),
          Expanded(
            child: SvgPicture.asset(
              'assets/images/quiz.svg',
              width: double.infinity, // Adjust the width as needed
              height: double.infinity, // Adjust the height as needed
            ),
          ),
        ],
      ),
    );
  }
}
