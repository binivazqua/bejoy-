
import 'dart:async';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutterin/components/medAnimation.dart';
import 'package:flutterin/models/meditationConstants.dart';


class meditationTemplate extends StatelessWidget {

  final meditationConstants constants;
  /*
  final String title;
  final Color color;
  final int millis;
  */
  const meditationTemplate({super.key, required this.constants});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:  Color.fromARGB(0, 105, 240, 175)),
      body: Center(
        child: medAnimation(constants: constants,),
    )
    );
  }
}
