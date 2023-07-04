import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int qIdx = 0;
  final questions = const [
    {
      "questionText": "What is the name of the largest animal on the planet?",
      "answers": ["lion", "tiger", "elephant", "blue whales"],
      "correctAnswer": "blue whales"
    },
    {
      "questionText": "What is the name of Ethiopian prime minister?",
      "answers": ["Semir", "Abiy Ahmed", "Feysel Jimma", "Donald Trump"],
      "correctAnswer": "Abiy Ahmed"
    },
    {
      "questionText": "What is the name of the largest mountain on the planet?",
      "answers": ["Mt. Everest", "Mt. Kilimanjaro", "Mt. Dashen", "Mt. Big"],
      "correctAnswer": "Mt. Everest"
    }
  ];

  int totalScore = 0;
  void answerQuestion(String answer) {
    int length = questions.length;
    totalScore += questions[qIdx]["correctAnswer"] == answer ? 1 : 0;
    if (qIdx < length) {
      setState(() {
        qIdx = (qIdx + 1);
      });
    }
  }

  void _resetQuiz() {
    totalScore = 0;
    setState(() {
      qIdx = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz app"),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        body: qIdx < questions.length
            ? Column(
                children: [Quiz(answerQuestion, questions, qIdx)],
              )
            : Result(totalScore, _resetQuiz),
      ),
    );
  }
}
