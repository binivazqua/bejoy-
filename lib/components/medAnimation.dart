import 'dart:async';
import 'dart:ffi';


import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutterin/blocks/subblocks/animationMed.dart';


class medAnimation extends StatefulWidget {
  const medAnimation({super.key});

  @override
  State<medAnimation> createState() => _medAnimationState();
}

class _medAnimationState extends State<medAnimation> {

  // vars:
  int timeLeft = 5;
  bool anim = false;

  void _startCountdown() {
    Timer.periodic(Duration(seconds: 3), (timer) { 
      if(timeLeft > 0) {
        setState(() {
          timeLeft--;  
        });
        //anim = true;
      } else {
        timer.cancel();
        //a = false;
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
            //animationMedia(animated: anim, colorcin: Colors.greenAccent, time: timeLeft, colorglow: Colors.blue),
            AvatarGlow(
              glowShape: BoxShape.circle,
              glowColor: Colors.pink,
              duration: Duration(milliseconds: 4000),
              animate: true,
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