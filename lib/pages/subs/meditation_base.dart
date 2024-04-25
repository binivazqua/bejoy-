
import 'dart:async';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutterin/components/medAnimation.dart';


class meditationTemplate extends StatelessWidget {
  const meditationTemplate({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: medAnimation()
    )
    );
  }
}
