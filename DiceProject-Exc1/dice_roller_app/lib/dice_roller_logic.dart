import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  late String img = 'images/dice-1.png';
  List<String> imgs = [
    'images/dice-1.png',
    'images/dice-2.png',
    'images/dice-3.png',
    'images/dice-4.png',
    'images/dice-5.png',
    'images/dice-6.png'
  ];

  @override
  void initState() {
    super.initState();
    img = getRandomImage();
  }

  String getRandomImage() {
    Random random = Random();
    int randomIndex = random.nextInt(imgs.length);
    return imgs[randomIndex];
  }

  void rollDice() {
    setState(() {
      img = getRandomImage();
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return ScaleTransition(
              scale: animation,
              child: child,
            );
          },
          child: Image.asset(
            img,
            key: UniqueKey(), // Ensuring Flutter knows this is a new image
            height: 200,
            width: 200,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: rollDice,
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.black),
            ),
            child: const Text(
              "roll dice",
              style: TextStyle(color: Colors.white),
            ))
      ],
    );
  }
}
