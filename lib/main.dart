import 'package:birdie/game_page.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Birdie'),
          centerTitle: true,
          backgroundColor: Colors.green.shade100,
        ),
        body: Center(child: GamePage()),
      ),
    );
  }
}
