import 'package:flutter/material.dart';
import 'package:quiz_view/quiz_view.dart';

class Clue8 extends StatefulWidget {
  Clue8({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Clue8State createState() => _Clue8State();
}

class _Clue8State extends State<Clue8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clue #8'),
      ),
      body: Center(
          child: QuizView(
            showCorrect: true,
            tagBackgroundColor: Colors.lightBlue,
            tagColor: Colors.black,
            questionTag: null,
            answerColor: Colors.white,
            answerBackgroundColor: Colors.black38,
            questionColor: Colors.white,
            backgroundColor: Colors.lightBlue,
            width: 400,
            height: 600,
            question: "Gladys West created the building blocks for what piece of modern technology?",
            rightAnswer: "GPS",
            wrongAnswers: ["WiFi", "5G", "Smart Phones"],
            onRightAnswer: () => print("Right"),
            onWrongAnswer: () => print("Wrong"),
          )),
    );
  }
}
