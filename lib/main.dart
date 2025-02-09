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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              child: GestureDetector(
                onTap: () {
                  playSound(1);
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.yellow,
              child: GestureDetector(
                onTap: () {
                  playSound(2);
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              child: GestureDetector(
                onTap: () {
                  playSound(3);
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: GestureDetector(
                onTap: () {
                  playSound(4);
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.purple,
              child: GestureDetector(
                onTap: () {
                  playSound(5);
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.pink,
              child: GestureDetector(
                onTap: () {
                  playSound(6);
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.teal,
              child: GestureDetector(
                onTap: () {
                  playSound(7);
                },
              ),
            ),
          ),
        ],
      )),
    );
  }
}
