import 'package:flutter/material.dart';
import 'package:po/database/data_structure.dart';
import 'package:video_player/video_player.dart';

import '../additionalpage/videoplayer.dart';

class ResultPage extends StatelessWidget {
  final int quizResults;
  final void Function()? onPressed;
  final VideoPlayerController controller;
  const ResultPage({
    super.key,
    required this.quizResults,
    required this.onPressed,
    required this.controller,
  });

  double getGrade(int score) {
    double grade;
    int total = DataStructure().questions.length * 10;
    grade = score / total * 100;
    return grade;
  }

  String get resultPhrase {
    String resultText = '';
    if (getGrade(quizResults) >= 80.0) {
      resultText =
          "You have a very high level of Stress.Consider seeking support from a mental health professional for coping strategies";
    } else if (getGrade(quizResults) >= 60.0) {
      resultText =
          "You have Chronic Mental Stress.Enroll in stress reduction programs or workshops for long-term strategies";
    } else if (getGrade(quizResults) >= 40.0) {
      resultText =
          "You have Moderate level of Mental Stress.Practice guided mindfulness meditation to cultivate awareness and reduce stress!";
    } else if (getGrade(quizResults) >= 20.0) {
      resultText =
          "You have Low-level Mental Stress.Take short breaks throughout the day to stretch and clear your mind";
    } else if (getGrade(quizResults) < 20.0) {
      resultText =
          "Impressive!You barely have any Mental Stress.Keep it up";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        VideoPlayerWidget(
          controller: controller,
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.w200,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: FloatingActionButton.extended(
            onPressed: onPressed,
            icon: const Icon(
              Icons.quiz_outlined,
              color: Color(0xffffcc80),
            ),
            label: const Text(
              'Try One More Time',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff000000),
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
