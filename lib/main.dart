import 'package:flutter/material.dart';
import 'package:app/menu/Menu.dart';

void main() {
  runApp(const InteractiveLabyrinth());
}

class InteractiveLabyrinth extends StatelessWidget {
  const InteractiveLabyrinth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interactive Labyrinth',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const GameMenu(),
    );
  }
}
