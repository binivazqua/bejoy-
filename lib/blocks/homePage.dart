
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bejoy'),
      ),
      body: Container(
          child: const Text('Holis')
        ),
    );
  }
  
}