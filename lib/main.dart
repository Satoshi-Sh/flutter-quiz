import 'package:flutter/material.dart';
import 'package:flutter_quiz/questions_screen.dart';
import 'start_screen.dart';

void main() {
  runApp(
    MaterialApp(
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
    ),
  );
}
