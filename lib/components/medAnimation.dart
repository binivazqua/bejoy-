import 'dart:async';
import 'dart:ffi';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterin/blocks/subblocks/animationMed.dart';
import 'package:flutterin/models/meditationConstants.dart';
import 'package:audioplayers/audioplayers.dart';

class medAnimation extends StatefulWidget {
  final meditationConstants constants;
  /*
  final String title;
  final Color color;
  final int millis;
 */

  medAnimation({
    super.key,
    required this.constants,
  });

  @override
  State<medAnimation> createState() => _medAnimationState();
}

class _medAnimationState extends State<medAnimation> {
  // vars:
  int timeLeft = 10;
  bool anim = false;
  String guide = "Breath Deeply";

  void _startCountdown() {
    final ding = AudioPlayer();
    Timer.periodic(Duration(seconds: 2), (timer) {
      if (timeLeft > 0) {
        setState(() {
          timeLeft--;
          anim = true;
          guide = widget.constants.hints[0];
          ding.play(AssetSource('audio/dingy.wav'));
        });

        if (timeLeft <= (widget.constants.timer / 2).ceil()) {
          setState(() {
            guide = widget.constants.hints[1];
          });
        }
      } else {
        setState(() {
          anim = false;
          guide = widget.constants.hints[2];
          ding.play(AssetSource('audio/done.mp3'));
        });

        timer.cancel();
      }
    });
  }

/*
_startCountdown (int timeLeft, List hints){
  int counter = timeLeft;

  Timer.periodic(Duration(seconds:1), (timer) { 
      if(counter == 0) {
        setState(() {
          timer.cancel();
        });
      } else {
        setState(() {
          counter--;
          print(counter);
        });
      }
  });

}
*/
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timeLeft = widget.constants.timer;
    print((widget.constants.timer / 2).ceil());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Text(
            widget.constants.title,
            style: TextStyle(fontSize: 20),
          ),
        ),

        // ANGER RELIEF:
        //animationMedia(animated: anim, colorcin: widget.color, time:timeLeft, colorglow: Colors.blue, dur: widget.millis),
        animationMedia(
          time: timeLeft,
          constants: widget.constants,
          anim: anim,
        ),

        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Text(guide),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.grey[200])),
              onPressed: _startCountdown,
              child: Text('Start',
                  style:
                      TextStyle(fontSize: 10, color: widget.constants.color))),
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
