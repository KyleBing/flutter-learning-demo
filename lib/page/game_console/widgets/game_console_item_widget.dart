import 'package:flutter/material.dart';
import '../../../model/game_console.dart';

class GameConsoleItemWidget extends StatelessWidget {
  final GameConsole gameConsole;
  const GameConsoleItemWidget({super.key, required this.gameConsole});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Image.asset(
                'assets/image/300w/${gameConsole.image}',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Text(
            gameConsole.title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}