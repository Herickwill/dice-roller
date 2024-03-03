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

  var activeImage = "assets/images/dice-2.png";

  void rollDice() {
    var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      activeImage = "assets/images/dice-$diceRoll.png";
    });
    print('Changing dice...');
  }
  @override
  Widget build(context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            activeImage,
            width: 200,
          ),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                )),
            child: const Text("Rolar!!"),
          ),
        ],
      );
  }
}