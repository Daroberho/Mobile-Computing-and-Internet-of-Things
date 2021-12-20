import 'package:flutter/material.dart';
import 'package:app/menu/widgets/menu_buttons.dart';
import 'package:app/mode/Mode.dart';
import 'package:app/game/Game.dart';
import 'package:app/settings/Settings.dart';
import 'package:app/connector/Connector.dart';

class GameMenu extends StatelessWidget {
  const GameMenu({Key? key}) : super(key: key);

  final Map<String, Widget> _screens = const {
    "Start": Game(),
    "Mode": Mode(),
    "Connect eSense": Connector(),
    "Settings": Settings(),
  };

  List<Widget> _buildButtons() {
    return _screens.entries.map((e) => MenuButton(name: e.key, page: e.value)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Interactive Labyrinth"),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Colors.blueGrey.shade200],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: _buildButtons(),
          ),
        ),
      ),
    );
  }
}
