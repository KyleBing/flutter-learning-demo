import 'package:flutter/material.dart';
import '../../../model/game_console.dart';
import 'game_console_item_widget.dart';


class GameConsoleGridWidget extends StatefulWidget {
  final List<GameConsole> gameConsoleList;
  final int gridColumnCount;
  const GameConsoleGridWidget({super.key, required this.gameConsoleList, required this.gridColumnCount});

  @override
  State<GameConsoleGridWidget> createState() => _GameConsoleGridWidgetState();
}

class _GameConsoleGridWidgetState extends State<GameConsoleGridWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: widget.gridColumnCount,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.8,
      ),
      itemCount: widget.gameConsoleList.length,
      itemBuilder: (context, index) {
        return GameConsoleItemWidget(gameConsole: widget.gameConsoleList[index]);
      },
    );
  }
}