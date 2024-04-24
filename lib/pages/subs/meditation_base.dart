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
          child: Icon(Icons.healing),
          
          ),
      )
    );
  }
}