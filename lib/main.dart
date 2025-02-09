import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey(int n, Color color) {
    return Expanded(
      child: Container(
        color: color,
        child: GestureDetector(
          onTap: () {
            playSound(n);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            body: Column(
          children: [
            buildKey(1, Colors.red),
            buildKey(2, Colors.yellow),
            buildKey(3, Colors.green),
            buildKey(4, Colors.blue),
            buildKey(5, Colors.teal),
            buildKey(6, Colors.purple),
            buildKey(7, Colors.pink),
          ],
        )),
      ),
    );
  }
}
