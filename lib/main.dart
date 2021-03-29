import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dice(),
    );
  }
}

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftimgNumber = 1;
  int rightimgNumber = 1;
  void update() {
    setState(() {
      leftimgNumber = Random().nextInt(6) + 1;
      rightimgNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Dice App"),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                  onTap: update,
                  child: Image.asset("images/dice$leftimgNumber.png")),
            )),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                  onTap: update,
                  child: Image.asset("images/dice$rightimgNumber.png")),
            )),
          ],
        ),
      ),
    );
  }
}
