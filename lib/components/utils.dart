import 'package:flutter/material.dart';

class utilContainer extends StatelessWidget {
  final String text;
  final Color color;

  utilContainer({
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: color),
        child: Row(
          children: [
            Icon(
              Icons.abc_rounded,
              size: 50,
              color: Colors.white,
            ),
            SizedBox(width: 20),
            Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Jua'),
            ),
          ],
        ),
      ),
    );
  }
}
