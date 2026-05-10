import 'package:birdie/game_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // checks if its debug mode or not
    if (kDebugMode) {
      print('debugMode');
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Birdie'),
          centerTitle: true,
          backgroundColor: Colors.green.shade100,
        ),
        body: Align(alignment: .topCenter, child: GamePage()),
      ),
    );
  }
}
