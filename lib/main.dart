import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Dice Manipulator On Flutter'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber=5;
  int rightDiceNumber=5;
  void diceRoll()
  {
    leftDiceNumber= Random().nextInt(6) + 1;
    rightDiceNumber= Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {


    return Center(
     
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed:  (){
                  setState(() {
                   diceRoll();
                  });
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
                onPressed: (){
                  setState(() {
                    diceRoll();
                  });
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
