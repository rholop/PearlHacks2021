import 'package:flutter/material.dart';
import 'package:quiz_view/quiz_view.dart';

class Clue4 extends StatefulWidget {
  Clue4({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Clue4State createState() => _Clue4State();
}

class _Clue4State extends State<Clue4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clue #4'),
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
            question: "Which woman invented a new way to transform plastic into biofuel at age 19?",
            rightAnswer: "Azza Abdel Hamid Faiad",
            wrongAnswers: ["Dr. Patricia Bath", "Dr. Seema Prakash", "Deepika Kurup"],
            onRightAnswer: () => print("Right"),
            onWrongAnswer: () => print("Wrong"),
          )),
    );
  }
}
