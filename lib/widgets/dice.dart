import 'package:flutter/material.dart';

class Dice extends StatelessWidget {
  const Dice({Key? key, this.diceNumber = 1}) : super(key: key);

  final int diceNumber;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset('images/dice$diceNumber.png'),
      ),
    );
  }
}
