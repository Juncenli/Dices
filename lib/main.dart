import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.teal.shade100,
        ),
        body: DicePage(),
      ),
    );
  }
}


class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1, rightDiceNumber = 1;
  void changeDiceNumber() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  // flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Image(
                      height: 150,
                      width: 150,
                      image: AssetImage('images/dice$leftDiceNumber.png'),
                    ),
                  ),
                ),
                Expanded(
                  // flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Image(
                      height: 150,
                      width: 150,
                      image: AssetImage('images/dice$rightDiceNumber.png'),
                    ),
                  ),
                ),
              ],
            ),
            TextButton(
              // callback function
              onPressed: (){
                // change the state
                setState(() {
                  changeDiceNumber();
                  changeDiceNumber();
                });

              },
              child: Text(
                'Click',
                style: TextStyle(
                  color: Colors.teal,
                  fontStyle: FontStyle.italic,
                  fontSize: 50.0,
                ),
              ),
            ),
          ],
        )
    );
  }
}

