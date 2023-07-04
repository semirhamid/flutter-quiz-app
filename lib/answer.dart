import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  const Answer(this.answerText, this.selectHandler, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: () => selectHandler(answerText),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.purpleAccent),
          child: Text(answerText),
        ));
  }
}
