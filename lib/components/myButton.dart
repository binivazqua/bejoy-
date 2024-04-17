import 'package:flutter/material.dart';

class myButton extends StatelessWidget {
  const myButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(8),
      
      ),
      child: Center(child:
       Text('Go!'),
       )
    );
  }
}