import 'dart:async';
import 'dart:ffi';


import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterin/blocks/subblocks/animationMed.dart';


class medAnimation extends StatefulWidget {
  final String title;
  final Color color;
  final int millis;
 
 medAnimation({super.key, required this.title, required this.color, required this.millis, });

  @override
  State<medAnimation> createState() => _medAnimationState();
}

class _medAnimationState extends State<medAnimation> {

  // vars:
  int timeLeft = 10;
  bool anim = false;
  String guide = "Breath deeply.";

  void _startCountdown() {
    Timer.periodic(Duration(seconds: 2), (timer) { 

      if(timeLeft > 0) {
        setState(() {
          timeLeft --;  
          anim = true;
          guide = "Here we go.";
        });

        if (timeLeft <= 5) {
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


  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Text(widget.title, style: TextStyle(fontSize: 20),),

            ),          
            
            // ANGER RELIEF:
            animationMedia(animated: anim, colorcin: widget.color, time:timeLeft, colorglow: Colors.blue, dur: widget.millis),

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
                 child: Text('Start', style: TextStyle(fontSize: 10, color: widget.color))),
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