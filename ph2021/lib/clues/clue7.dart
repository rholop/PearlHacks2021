import 'package:flutter/material.dart';

class Clue7 extends StatefulWidget {
  Clue7({Key key}) : super(key: key);

  @override
  _Clue7WidgetState createState() => _Clue7WidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _Clue7WidgetState extends State<Clue7> {

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/thanks.jpg"), fit: BoxFit.fitWidth),
      ),
    );
  }
}