import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

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
                final player = AudioPlayer();
                player.play(AssetSource('note1.wav'));
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
                final player = AudioPlayer();
                player.play(AssetSource('note2.wav'));
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
                final player = AudioPlayer();
                player.play(AssetSource('note3.wav'));
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
                final player = AudioPlayer();
                player.play(AssetSource('note4.wav'));
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
                final player = AudioPlayer();
                player.play(AssetSource('note5.wav'));
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
                final player = AudioPlayer();
                player.play(AssetSource('note6.wav'));
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
                final player = AudioPlayer();
                player.play(AssetSource('note7.wav'));
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
