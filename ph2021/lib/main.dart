import 'package:flutter/material.dart';
import 'package:quiz_view/quiz_view.dart';
import 'package:ph2021/clues/clue1.dart';
import 'package:ph2021/clues/clue2.dart';
import 'package:ph2021/clues/clue3.dart';
import 'package:ph2021/clues/clue4.dart';
import 'package:ph2021/clues/clue5.dart';
import 'package:ph2021/clues/clue6.dart';
import 'package:ph2021/clues/clue7.dart';
import 'package:ph2021/clues/clue8.dart';
import 'package:ph2021/clues/clue9.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Breaking Out!',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.lightBlue,
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => MyHomePage(),
        '/game': (BuildContext context) => SecondScreen(),
        '/clue1': (BuildContext context) => Clue1(),
        '/clue2': (BuildContext context) => Clue2(),
        '/clue3': (BuildContext context) => Clue3(),
        '/clue4': (BuildContext context) => Clue4(),
        '/clue5': (BuildContext context) => Clue5(),
        '/clue6': (BuildContext context) => Clue6(),
        '/clue7': (BuildContext context) => Clue7(),
        '/clue8': (BuildContext context) => Clue8(),
        '/clue9': (BuildContext context) => Clue9(),

      },
      //home: MyHomePage(title: 'Starting Page'),

    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Breaking Out!'),

      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome...',
              style: TextStyle(fontSize: 42, fontStyle: FontStyle.italic),
            ),
            Padding( padding: EdgeInsets.fromLTRB(20, 20, 20, 20),

            child: Text(
              'Many talented women of color have broken through the glass ceiling to achieve success in Science, Technology, Engineering, and Mathematics... can they guide you to break free from these puzzles?',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
            ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/game');
              },
              child: Text(
                "I'm ready!",
                style: TextStyle(fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}


/// This is the stateful widget that the main application instantiates.
class SecondScreen extends StatefulWidget {
  SecondScreen({Key key}) : super(key: key);

  @override
  _SecondScreenWidgetState createState() => _SecondScreenWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _SecondScreenWidgetState extends State<SecondScreen> {
  double x = 0.0;
  double y = 0.0;

  void _updateLocation(TapUpDetails details) {
    setState(() {
      x = details.globalPosition.dx;
      y = details.globalPosition.dy;
      if(x > 25 && x < 75 && y > 363 && y < 413) {
        Navigator.pushNamed(context, '/clue1');
      }
      else if(x > 24 && x < 74 && y > 593&& y < 643) {
        Navigator.pushNamed(context, '/clue2');
      }
      else if(x > 158 && x < 208 && y > 467&& y < 527) {
        Navigator.pushNamed(context, '/clue3');
      }
      else if(x > 179 && x < 229 && y > 382 && y < 432) {
        Navigator.pushNamed(context, '/clue4');
      }
      else if(x > 243 && x < 298 && y > 367 && y < 417) {
        Navigator.pushNamed(context, '/clue5');
      }
      else if(x > 307 && x < 357 && y > 401 && y < 451) {
        Navigator.pushNamed(context, '/clue6');
      }
      else if(x > 181 && x < 231 && y > 279 && y < 329) {
        Navigator.pushNamed(context, '/clue7');
      }
      else if(x > 308 && x < 358 && y > 603 && y < 653) {
        Navigator.pushNamed(context, '/clue8');
      }
      else if(x > 225 && x < 275 && y > 479&& y < 529) {
        Navigator.pushNamed(context, '/clue9');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/lab.jpeg"), fit: BoxFit.cover),
        ),
        child: GestureDetector(
          onTapUp: _updateLocation,
        )
    );
  }
}

