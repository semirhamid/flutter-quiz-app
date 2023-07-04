import 'package:flutter/cupertino.dart';
import 'Question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int qIdx;
  const Quiz(this.answerQuestion, this.questions, this.qIdx, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[qIdx]['questionText'] as String),
        ...(questions[qIdx]['answers'] as List<String>)
            .map((answer) => Answer(answer, answerQuestion))
            .toList()
      ],
    );
  }
}
