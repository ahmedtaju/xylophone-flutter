import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({int? n, Color? color}) {
    return Expanded(
      child: Container(
        color: color,
        child: GestureDetector(
          onTap: () {
            playSound(n!);
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
            buildKey(n: 1, color: Colors.red),
            buildKey(n: 2, color: Colors.yellow),
            buildKey(n: 3, color: Colors.green),
            buildKey(n: 4, color: Colors.blue),
            buildKey(n: 5, color: Colors.teal),
            buildKey(n: 6, color: Colors.purple),
            buildKey(n: 7, color: Colors.pink),
          ],
        )),
      ),
    );
  }
}
