import 'package:flutter/material.dart';

class Clue3 extends StatefulWidget {
  Clue3({Key key}) : super(key: key);

  @override
  _Clue3WidgetState createState() => _Clue3WidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _Clue3WidgetState extends State<Clue3> {

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/credits.jpg"), fit: BoxFit.cover),
        ),
    );
  }
}