import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int n) {
    final player = AudioPlayer();
    player.play(AssetSource('note$n.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            child: GestureDetector(
              onTap: () {
                playSound(1);
              },
            ),
            width: 100,
            height: 30,
            color: Colors.red,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: GestureDetector(
              onTap: () {
                playSound(2);
              },
            ),
            width: 100,
            height: 30,
            color: Colors.yellow,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: GestureDetector(
              onTap: () {
                playSound(3);
              },
            ),
            width: 100,
            height: 30,
            color: Colors.purple,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: GestureDetector(
              onTap: () {
                playSound(4);
              },
            ),
            width: 100,
            height: 30,
            color: Colors.teal,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: GestureDetector(
              onTap: () {
                playSound(5);
              },
            ),
            width: 100,
            height: 30,
            color: Colors.pink,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: GestureDetector(
              onTap: () {
                playSound(6);
              },
            ),
            width: 100,
            height: 30,
            color: Colors.blue,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: GestureDetector(
              onTap: () {
                playSound(7);
              },
            ),
            width: 100,
            height: 30,
            color: Colors.orange,
          ),
        ],
      )),
    );
  }
}
