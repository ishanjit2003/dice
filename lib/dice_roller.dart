import 'package:flutter/material.dart';
import 'dart:math';

var randomizer=Random();
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {



  var activeDice='assets/images/dice-1.png';

  void rollDice() {
    setState(() {
      var diceRoll=randomizer.nextInt(6)+1;
      activeDice='assets/images/dice-$diceRoll.png';
    });

  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          activeDice,
          width: 300,
        ),
        SizedBox(
          height: 20,
        ),
        TextButton(

            onPressed: rollDice,
            style: TextButton.styleFrom(foregroundColor: Colors.black),
            child: Text(
              'Roll it',
              style: TextStyle(fontSize: 30),
            ))
      ],
    );
  }
}
