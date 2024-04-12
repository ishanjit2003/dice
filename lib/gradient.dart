import 'package:flutter/material.dart';
import 'package:untitled3/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        color1, color2
        // Color.fromARGB(255, 26, 2, 80),
        // Color.fromARGB(255, 30, 8, 50)
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      child: Center(
          child: DiceRoller(),
    ));
  }
}
