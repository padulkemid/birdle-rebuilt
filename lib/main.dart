import 'package:birdie/game.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  final space = 12.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Tile(letter: 'A', hitType: HitType.hit),
              SizedBox(width: space),
              Tile(letter: 'B', hitType: HitType.partial),
              SizedBox(width: space),
              Tile(letter: 'C', hitType: HitType.miss),
              SizedBox(width: space),
              Tile(letter: 'D', hitType: HitType.none),
            ],
          ),
        ),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  final String letter;
  final HitType hitType;

  const Tile({super.key, required this.letter, required this.hitType});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        color: _getHitTypeColor(),
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
      HitType.hit => Colors.green,
      HitType.partial => Colors.yellow,
      HitType.miss => Colors.grey,
      _ => Colors.white,
    };
  }
}
