import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  //Define function to play the sound when the Flat button is pressed
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  //Define function to create the Flat button
  Expanded buildKey({int num, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(num);
        },
        child: Text('Press me'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                //Called the build Flat button widget here
                buildKey(num: 1, color: Colors.red),
                buildKey(num: 2, color: Colors.blue),
                buildKey(num: 3, color: Colors.green),
                buildKey(num: 4, color: Colors.yellow),
                buildKey(num: 5, color: Colors.purple),
                buildKey(num: 6, color: Colors.orange),
                buildKey(num: 7, color: Colors.teal),
              ]),
        ),
      ),
    );
  }
}
