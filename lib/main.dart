import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Player(),
      ),
    );
  }
}

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  final player = AudioPlayer();

  @override
  void initState() {
    super.initState();
    initPlayer();
  }

  Future<void> initPlayer() async {
    // Any additional player setup can go here.
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: TextButton(
          onPressed: () async => {
            // await player.setSource(AssetSource('note1.wav')),
            player.play(AssetSource('note1.wav'))
          },
          child: const Text('Click me'),
        ),
      ),
    );
  }
}
