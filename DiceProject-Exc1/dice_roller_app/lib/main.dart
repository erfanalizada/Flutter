import 'dice_roller_logic.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
      decoration: returnBoxDecoration(),
      child: const Center(child: DiceRoller()),
    )));
  }
}

BoxDecoration returnBoxDecoration() {
  return const BoxDecoration(
    gradient: SweepGradient(
      colors: [
        Color.fromARGB(255, 59, 69, 209),
        Color.fromARGB(255, 141, 175, 231),
        Color.fromARGB(255, 221, 226, 233),
        Color.fromARGB(255, 0, 106, 255),
        Color.fromARGB(255, 254, 254, 255),
        Color.fromARGB(255, 120, 120, 250),
        Color.fromARGB(255, 120, 120, 250),
      ],
    ),
  );
}
