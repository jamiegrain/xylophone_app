import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  final player = AudioCache();

  Widget soundButton(int noteNum, Color buttonColor) {
    return Expanded(child:
      FlatButton(
        color: buttonColor,
        onPressed: () {
          player.play("note$noteNum.wav");
        }));
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              soundButton(1, Colors.red),
              soundButton(2, Colors.orange),
              soundButton(3, Colors.yellow),
              soundButton(4, Colors.green),
              soundButton(5, Colors.teal),
              soundButton(6, Colors.blue),
              soundButton(7, Colors.purple)
          ]),
        ),
      ),
    );
  }
}
