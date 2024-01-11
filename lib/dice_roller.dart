import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 4;

  void rollDice() {
    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.asset(
        'assets/images/dice-$currentDiceRoll.png',
        height: 200,
        width: 200,
      ),
      const SizedBox(height: 20),
      TextButton(
        onPressed: rollDice,
        style: TextButton.styleFrom(
            padding: const EdgeInsets.all(40),
            backgroundColor: const Color.fromARGB(240, 120, 180, 140),
            foregroundColor: const Color.fromARGB(239, 94, 50, 85),
            textStyle: const TextStyle(fontSize: 30)),
        child: const Text('Roll Dice'),
      )
    ]);
  }
}
