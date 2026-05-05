import 'package:birdie/constants.dart';
import 'package:birdie/game.dart';
import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final String letter;
  final HitType hitType;

  const Tile({super.key, required this.letter, required this.hitType});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInBack,
      width: AppConstants.containerWidth,
      height: AppConstants.containerHeight,
      decoration: BoxDecoration(
        border: .all(color: Colors.black),
        color: _getHitTypeColor(),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 1.0,
            offset: Offset(4.0, 4.0),
          ),
        ],
      ),
      child: Center(
        child: Text(
          letter.toUpperCase(),
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }

  Color _getHitTypeColor() {
    return switch (hitType) {
      .hit => Colors.green,
      .partial => Colors.yellow,
      .miss => Colors.grey,
      _ => Colors.white,
    };
  }
}
