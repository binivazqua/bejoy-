import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class animationMedia extends StatelessWidget {
  final bool animated;
  final Color colorcin;
  final Color colorglow;
  final int time;
  const animationMedia({
    super.key, 
    required this.animated,
    required this.colorcin,
    required this.time,
    required this.colorglow,

    
  });

  @override
  Widget build(BuildContext context) {
    return AvatarGlow(
              glowShape: BoxShape.circle,
              glowColor: colorglow,
              duration: Duration(milliseconds: 4000),
              animate: animated,
              curve: Curves.easeInCirc,
              glowCount: 3,
              child: Material(
                elevation: 2.0,
                shape: const CircleBorder(),
                child: CircleAvatar(
                  backgroundColor: colorcin,
                  radius: 40,
                  child: Text(time.toString(), style: TextStyle(
                    fontSize: 30,
                    color: Colors.white
                  ),)
                )
              ),
              
   );
  }
}