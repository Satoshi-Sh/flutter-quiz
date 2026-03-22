import 'package:flutter/material.dart';
import 'quiz.dart';
import 'answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 300,
            child: Text(
              'What are the main building blocks of Flutter UIs?',
              textWidthBasis: TextWidthBasis.longestLine,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: const Color.fromARGB(190, 255, 255, 255),
              ),
            ),
          ),
          const SizedBox(height: 30),
          AnswerButton(answerText: 'answer 1', onTap: () {}),
          AnswerButton(answerText: 'answer 2', onTap: () {}),
          AnswerButton(answerText: 'answer 3', onTap: () {}),
          AnswerButton(answerText: 'answer 4', onTap: () {}),
        ],
      ),
    );
  }
}
