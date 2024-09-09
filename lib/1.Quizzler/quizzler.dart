import 'package:angela_yu/1.Quizzler/quiz_brain.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Quizzler extends StatefulWidget {
  const Quizzler({super.key});

  @override
  State<Quizzler> createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {
  // List<String> questions = [
  //   'Is the solar system brings light',
  //   'Is the bear cries in room',
  //   'Is the moon lights in darkness'
  // ];
  // List<bool> answer = [true, false, false];
  QuizBrain quizBrain = QuizBrain();

  List<Icon> scoreKeeper = [];
  List<int> score = [];

  void checkAnswer(bool userPickedAnswer) {
    if (scoreKeeper.length > quizBrain.questionNumber) {
      Alert(
          context: context,
          title: "Finish",
          desc: '${score.length} / ${quizBrain.questionNumber + 1}',
          buttons: [
            DialogButton(
              onPressed: () {
                setState(() {
                  scoreKeeper.clear();
                  score.clear() ;
                  quizBrain.reset();
                });
                Navigator.pop(context);
              },
              child: const Text(
                'Try Again',
                style: TextStyle(color: Colors.white),
              ),
            )
          ]).show();
    } else {
      setState(() {
        if (quizBrain.getQuizAnswer() == userPickedAnswer) {
          scoreKeeper.add(const Icon(
            Icons.done,
            color: Colors.green,
            size: 25.0,
          ));
          score.add(quizBrain.questionNumber);
        } else {
          scoreKeeper.add(const Icon(
            Icons.close,
            color: Colors.red,
            size: 25.0,
          ));
        }
        quizBrain.nextQuestion();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                quizBrain.getQuizText(),
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            MaterialButton(
              color: Colors.blue,
              padding: const EdgeInsets.all(20.0),
              onPressed: () {
                checkAnswer(true);
              },
              child: const Text(
                'true',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            MaterialButton(
              color: Colors.red,
              padding: const EdgeInsets.all(20.0),
              onPressed: () {
                checkAnswer(false);
              },
              child: const Text(
                'false',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Row(
              children: scoreKeeper,
            )
          ],
        ),
      ),
    );
  }
}
