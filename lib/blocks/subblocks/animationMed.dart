import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutterin/models/meditationConstants.dart';

class animationMedia extends StatelessWidget {
  /*
  final bool animated;
  final Color colorcin;
  final Color colorglow;
  final int time;
  final int dur;
  */

  final int time;
  final bool anim;

  final meditationConstants constants;
  const animationMedia({
    super.key,
    required this.constants,
    required this.time,
    required this.anim,
  });

  @override
  Widget build(BuildContext context) {
    return AvatarGlow(
      glowShape: BoxShape.circle,
      glowColor: constants.waveColor,
      duration: Duration(milliseconds: constants.duration),
      animate: anim,
      curve: Curves.easeInCirc,
      glowCount: 3,
      child: Material(
          elevation: 2.0,
          shape: const CircleBorder(),
          child: CircleAvatar(
              backgroundColor: constants.color,
              radius: 80,
              child: Text(
                time.toString(),
                style: TextStyle(fontSize: 30, color: Colors.white),
              ))),
    );
  }
}
