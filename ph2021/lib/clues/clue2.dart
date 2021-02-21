import 'package:flutter/material.dart';
import 'package:quiz_view/quiz_view.dart';

class Clue2 extends StatefulWidget {
  Clue2({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Clue2State createState() => _Clue2State();
}

class _Clue2State extends State<Clue2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clue #2'),
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
            question: "Who was the first African-American woman to obtain a medical patent?",
            rightAnswer: "Dr. Patricia Bath",
            wrongAnswers: ["Azza Abdel Hamid Faiad", "Dr. Seema Prakash", "Deepika Kurup"],
            onRightAnswer: () => print("Right"),
            onWrongAnswer: () => print("Wrong"),
          )),
    );
  }
}
