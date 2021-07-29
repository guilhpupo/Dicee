import 'dart:math';

import 'package:dicee/widgets/dice.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  _handleOnPressed() {
    Random randomNumber = new Random();
    setState(() {
      leftDiceNumber = randomNumber.nextInt(6) + 1;
      rightDiceNumber = randomNumber.nextInt(6) + 1;
    });
  }

  Widget build(BuildContext context) {
    return TextButton(
      onPressed: _handleOnPressed,
      child: Center(
        child: Column(
          children: [
            Row(
              children: [
                Dice(diceNumber: leftDiceNumber),
                Dice(diceNumber: rightDiceNumber),
              ],
            ),
            Text('SUM: $leftDiceNumber+$rightDiceNumber'),
          ],
        ),
      ),
    );
  }
}
