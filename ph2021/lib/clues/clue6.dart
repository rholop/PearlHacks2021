import 'package:flutter/material.dart';
import 'package:quiz_view/quiz_view.dart';

class Clue6 extends StatefulWidget {
  Clue6({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Clue6State createState() => _Clue6State();
}

class _Clue6State extends State<Clue6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clue #6'),
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
            question: "What percentage do hispanics, blacks, and American Indians/Alaska Natives make up of the science and engineering workforce? ",
            rightAnswer: "11%",
            wrongAnswers: ["5%", "28%", "50%"],
            onRightAnswer: () => print("Right"),
            onWrongAnswer: () => print("Wrong"),
          )),
    );
  }
}
