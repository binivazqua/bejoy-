import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class audioPlayer extends StatefulWidget {
  const audioPlayer({super.key});

  @override
  State<audioPlayer> createState() => _audioPlayerState();
}

class _audioPlayerState extends State<audioPlayer> {
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          playSound();
        },
        child: Text('PLAY'));
  }

  Future<void> playSound() async {
    String audioPath = 'audio/dingy.wav';
    await player.play(AssetSource(audioPath));
  }
}
