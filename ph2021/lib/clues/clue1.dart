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
            image: Container(
              width: 150,
              height: 150,
              child: Image.network(
                  "https://yt3.ggpht.com/a/AATXAJyPMywRmD62sfK-1CXjwF0YkvrvnmaaHzs4uw=s900-c-k-c0xffffffff-no-rj-mo"),
            ),
            showCorrect: true,
            tagBackgroundColor: Colors.lightBlue,
            tagColor: Colors.black,
            questionTag: "Question: 2",
            answerColor: Colors.white,
            answerBackgroundColor: Colors.black38,
            questionColor: Colors.white,
            backgroundColor: Colors.lightBlue,
            width: 300,
            height: 600,
            question: "Which is the best framework for app development?",
            rightAnswer: "Flutter",
            wrongAnswers: ["Fluttor", "Flitter"],
            onRightAnswer: () => print("Right"),
            onWrongAnswer: () => print("Wrong"),
          )),
    );
  }
}
