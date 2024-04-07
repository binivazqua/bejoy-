import 'package:flutter/material.dart';

class textField extends StatelessWidget{
  final String hintDesiredText;

  const textField ({
    super.key,
    required this.hintDesiredText,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 10.0),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: hintDesiredText,
                hintStyle: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w300,
                  fontSize: 13
                ),
                ),
                
            ),
          );
  }

  
  
}