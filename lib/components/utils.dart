import 'package:flutter/material.dart';

class utilContainer extends StatelessWidget {
  final IconData icon;
  final String text;

  utilContainer({
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
              padding: EdgeInsets.all(12) ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.pink[50]
              ),
              child: Row(
              children: [
                Icon(icon, color: Colors.pink[100],),
                SizedBox(width: 20),
                Text(text, style: TextStyle(
                  color: Colors.grey[800]
                ),),
              ],
            ),
      ),
    );
                
    
  }
}