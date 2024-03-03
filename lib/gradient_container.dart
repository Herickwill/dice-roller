import 'package:firt_app/dice_roller.dart';
import 'package:flutter/material.dart';

const topLeft = Alignment.topLeft;
const bottomRight = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colorsList, {super.key});

  const GradientContainer.purple({super.key})
      : colorsList = const [
          Color.fromARGB(255, 26, 2, 80),
          Color.fromARGB(255, 45, 7, 98),
        ];

  final List<Color> colorsList;

  

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colorsList,
          begin: topLeft,
          end: bottomRight,
        ),
      ),
      child: Center(
          child: DiceRoller(),),
    );
  }
}
