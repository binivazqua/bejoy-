import 'package:flutter/material.dart';

class logoTile extends StatelessWidget {
  final String imagePath;

  const logoTile ({
    super.key,
    required this.imagePath,
  });
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Image.asset(imagePath),
      height: 50,
      color: Colors.grey[600],   

    );
  }
}