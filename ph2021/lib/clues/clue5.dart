import 'package:flutter/material.dart';
import 'package:quiz_view/quiz_view.dart';

class Clue5 extends StatefulWidget {
  Clue5({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Clue5State createState() => _Clue5State();
}

class _Clue5State extends State<Clue5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clue #5'),
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
            question: "Who invented an inexpensive way to clone plants and won a Global Female Inventor award in 2003?",
            rightAnswer: "Dr. Seema Prakash",
            wrongAnswers: ["Dr. Patricia Bath", "Azza Abdel Hamid Faiad", "Angela Zhang"],
            onRightAnswer: () => print("Right"),
            onWrongAnswer: () => print("Wrong"),
          )),
    );
  }
}
