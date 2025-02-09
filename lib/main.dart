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
        body: Center(
          child: GestureDetector(
            child: Text('PLAY'),
            onTap: () {
              final player = AudioPlayer();
              player.play(AssetSource('note2.wav'));
            },
          ),
        ),
      ),
    );
  }
}
