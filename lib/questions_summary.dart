import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            final Color bgColor =
                (data['user_answer'] == data['correct_answer'])
                ? const Color.fromARGB(218, 236, 81, 203)
                : const Color.fromARGB(136, 39, 221, 212);
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: bgColor,
                    shape: BoxShape.circle,
                  ),
                  child: Text(((data['question_index'] as int) + 1).toString()),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: SizedBox(
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['question'] as String,
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          data['user_answer'] as String,
                          style: TextStyle(
                            color: const Color.fromARGB(163, 206, 28, 212),
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          data['correct_answer'] as String,
                          style: TextStyle(
                            color: const Color.fromARGB(164, 28, 185, 212),
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
