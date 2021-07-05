import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class Xlophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            creatButton(Colors.red, "note1.wav"),
            creatButton(Colors.amber, "note2.wav"),
            creatButton(Colors.yellow, "note3.wav"),
            creatButton(Colors.green, "note4.wav"),
            creatButton(Colors.teal, "note5.wav"),
            creatButton(Colors.blueAccent, "note6.wav"),
            creatButton(Colors.indigo, "note7.wav"),
          ],
        ),
      ),
    );
  }

  Widget creatButton(Color color, String path) {
    return Expanded(
        child: FlatButton(
      color: color,
      onPressed: () {
        final player = AudioCache();
        player.play(path);
      },
      child: null,
    ));
  }
}
