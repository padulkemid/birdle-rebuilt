import 'package:birdie/constants.dart';
import 'package:birdie/game.dart';
import 'package:birdie/tile.dart';
import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  GamePage({super.key});

  final Game _game = Game();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .all(AppConstants.spacePadding),
      child: Column(
        spacing: AppConstants.spaceHeight,
        children: [
          for (final guess in _game.guesses)
            Row(
              spacing: AppConstants.spaceWidth,
              mainAxisAlignment: .center,
              children: [
                for (final letter in guess)
                  Tile(letter: letter.char, hitType: letter.type),
              ],
            ),
        ],
      ),
    );
  }
}
