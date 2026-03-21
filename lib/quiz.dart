import 'package:flutter/material.dart';
import 'dart:math';
import 'questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var currentNum = 1;
  void getAnotherQuiz() {
    setState(() {
      var randomNum = Random().nextInt(6) + 1;
      currentNum = randomNum;
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color.fromARGB(255, 185, 4, 221), Colors.indigo],
            ),
          ),
          child: QuestionsScreen(),
        ),
      ),
    );
  }
}
