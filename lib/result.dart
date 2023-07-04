import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback resetQuiz;
  const Result(this.score, this.resetQuiz, {super.key});

  String get resultScore {
    return 'You have scored $score';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            resultScore,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
        ),
        FloatingActionButton(onPressed: resetQuiz, child: const Text("Reset"))
      ],
    );
  }
}
