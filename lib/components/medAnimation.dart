import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';


class medAnimation extends StatefulWidget {
  const medAnimation({super.key});

  @override
  State<medAnimation> createState() => _medAnimationState();
}

class _medAnimationState extends State<medAnimation> {

  // vars:
  int timeLeft = 5;

  void _startCountdown() {
    Timer.periodic(Duration(seconds: 3), (timer) { 
      if(timeLeft > 0) {
        setState(() {
          timeLeft--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  // audio player:
  final player = AudioPlayer();

  void _playSound(){
  String audioPath = "";
} 
  
  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AvatarGlow(
              glowShape: BoxShape.circle,
              glowColor: Colors.pink,
              duration: Duration(milliseconds: 4000),
              
              curve: Curves.easeInCirc,
              glowCount: 3,
              child: Material(
                elevation: 2.0,
                shape: const CircleBorder(),
                child: CircleAvatar(
                  backgroundColor: Colors.purple,
                  radius: 40,
                  child: Text(timeLeft.toString(), style: TextStyle(
                    fontSize: 30,
                    color: Colors.white
                  ),)
                )
              ),
              
              ),

              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text('Pain relief'),

              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.grey[200])
                  ),
                  onPressed: _startCountdown,
                 child: Text('Start', style: TextStyle(fontSize: 10))),
              )

              /*
              MaterialButton(
                onPressed: (){},
                child: Text("Start")
              )
              */
          ],
        );
  }
}