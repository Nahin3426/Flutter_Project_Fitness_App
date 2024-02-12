import 'package:flutter/material.dart';
import 'package:po/database/data_structure.dart';
import 'package:video_player/video_player.dart';

import 'quiz.dart';
import 'result.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  late VideoPlayerController _controller;

  DataStructure a = DataStructure();
  final List _questions = DataStructure().questions;

  var _questionIndex = 0;
  var _totalScore = 0;
  var _title = 'Assessment';

  void _answerQuest(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
      if (_questionIndex == _questions.length) {
        playVideo(resultAsset);
        print(_questionIndex);
      }
    });
    print(_totalScore);
  }

  double getGrade(int score) {
    double grade;
    int total = _questions.length * 10;
    grade = score / total * 100;
    return grade;
  }

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      _title = 'Stress Level Assessment';
      _controller.dispose();
    });
  }

  void playVideo(String asset) {
    setState(() {
      _controller = VideoPlayerController.asset(asset)
        ..addListener(() => setState(() {}))
        ..setLooping(true)
        ..initialize().then((_) {
          _controller.play();
        });
      _title = 'Your Stress Level: ${getGrade(_totalScore).round()}';
    });
  }

  String get resultAsset {
    String resultText = '';
    if (getGrade(_totalScore) >= 80.0) {
      resultText = 'assets/videos/animation.mp4';
    } else if (getGrade(_totalScore) >= 60.0) {
      resultText = 'assets/videos/animation.mp4';
    } else if (getGrade(_totalScore) >= 40.0) {
      resultText = 'assets/videos/animation.mp4';
    } else if (getGrade(_totalScore) >= 20.0) {
      resultText = 'assets/videos/animation.mp4';
    } else if (getGrade(_totalScore) <= 20.0) {
      resultText = 'assets/videos/animation.mp4';
    }

    return resultText;
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF2BEA1),
        centerTitle: true,
        title: Text(
          _title,
          style: const TextStyle(
            fontSize: 20, // Change the font size to your desired value
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      body: _questionIndex < _questions.length
          ? QuizPage(
        questions: _questions,
        questionIndex: _questionIndex,
        onPressed: _answerQuest,
      )
          : ResultPage(
        quizResults: _totalScore,
        onPressed: resetQuiz,
        controller: _controller,
      ),
    );
  }
}
