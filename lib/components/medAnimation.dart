import 'dart:async';
import 'dart:ffi';


import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterin/blocks/subblocks/animationMed.dart';


class medAnimation extends StatefulWidget {
  final String title;
  final Color color;
  const medAnimation({super.key, required this.title, required this.color});

  @override
  State<medAnimation> createState() => _medAnimationState();
}

class _medAnimationState extends State<medAnimation> {

  // vars:
  int timeLeft = 5;
  bool anim = false;
  String guide = "Breath deeply.";

  void _startCountdown() {
    Timer.periodic(Duration(seconds: 2), (timer) { 

      if(timeLeft > 0) {
        setState(() {
          timeLeft--;  
          anim = true;
          guide = "Here we go.";
        });

        if (timeLeft <= (timeLeft % 2 + 1)) {
        setState(() {
            guide = "You're doing amazing!";
        });
      }
      } else {
        setState(() {
          anim = false;
          guide = "End of exercise.";
        });

          timer.cancel();
        
        }
    });
  }

/*
bool _animate (){
  if (timeLeft > 0){
    return true;
  } else {
    return false;
  }

}
*/
  // audio player:

  /*
  void _playSound(){
  String audioPath = "audio/ding.wav";
} 
  */
  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Text(widget.title, style: TextStyle(fontSize: 20),),
            ),          animationMedia(animated: anim, colorcin: widget.color, time: timeLeft, colorglow: Colors.blue, dur: 2000),

              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(guide),

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