import 'package:flutter/material.dart';
import 'package:quiz_view/quiz_view.dart';

class Clue9 extends StatefulWidget {
  Clue9({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Clue9State createState() => _Clue9State();
}

class _Clue9State extends State<Clue9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clue #9'),
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
            question: "Mae Jemison was the first African American woman that went to space, when she and six other astronauts went into space on the space shuttle ____. ",
            rightAnswer: "Endeavor",
            wrongAnswers: ["Challenger", "Discovery", "Atlantis"],
            onRightAnswer: () => print("Right"),
            onWrongAnswer: () => print("Wrong"),
          )),
    );
  }
}
