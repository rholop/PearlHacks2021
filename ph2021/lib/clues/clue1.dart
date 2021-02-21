import 'package:flutter/material.dart';
import 'package:quiz_view/quiz_view.dart';

class Clue1 extends StatefulWidget {
  Clue1({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Clue1State createState() => _Clue1State();
}

class _Clue1State extends State<Clue1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clue #1'),
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
            question: "Who aided NASA by utilizing geometry for space travel to figure out the paths for the spacecraft to orbit around Earth and land on the moon?",
            rightAnswer: "Katherine Johnson",
            wrongAnswers: ["Marie Curie", "Mary Wagner", "Catherine Smith"],
            onRightAnswer: () => print("Right"),
            onWrongAnswer: () => print("Wrong"),
          )),
    );
  }
}
