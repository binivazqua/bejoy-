
import 'dart:async';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutterin/components/medAnimation.dart';


class meditationTemplate extends StatelessWidget {
  final String title;
  final Color color;
  const meditationTemplate({super.key, required this.title, required this.color});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:  Color.fromARGB(0, 105, 240, 175)),
      body: Center(
        child: medAnimation(title: title, color: color,)
    )
    );
  }
}
