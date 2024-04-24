import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class meditationTemplate extends StatelessWidget {
  const meditationTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AvatarGlow(
          glowShape: BoxShape.circle,
          glowColor: Colors.pink,
          duration: Duration(milliseconds: 10000),
          
          curve: Curves.easeInCirc,
          glowCount: 3,
          child: Material(
            animationDuration: Duration(milliseconds: 100),
            elevation: 2.0,
            shape: const CircleBorder(),
            child: CircleAvatar(
              backgroundColor: Colors.purple,
              radius: 40,
              child: Text('Breath', style: TextStyle(
                fontSize: 10,
                color: Colors.white
              ),)
            )
          ),
          
          ),

    ));
  }
}