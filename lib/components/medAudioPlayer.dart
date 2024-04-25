import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class medAudioPlayer extends StatefulWidget {
  
  final ElevatedButton botoncin;

  const medAudioPlayer({
    super.key, 
    required this.botoncin

   });

  @override
  State<medAudioPlayer> createState() => _medAudioPlayerState();
}

class _medAudioPlayerState extends State<medAudioPlayer> {

  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

void _playSound(){
  String audioPath = "";
} 