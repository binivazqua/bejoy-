import 'package:flutter/material.dart';

class drProfileCard extends StatelessWidget {

  const drProfileCard ({Key? key}) : super (key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(left: 1.0),
      child: Container(
        padding: EdgeInsets.all(10),
        width: 10,
                    decoration: BoxDecoration(
                      color: Colors.purple[200],
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.person),
      
                        Row(
                          children: [
                            Icon(Icons.tag_faces_rounded),
                            Text('5/5', style: TextStyle(
                              color: Colors.grey[600],
                            ))
                          ],
                        ),
      
                        Text('Dr. Dr Name')
      
                      ],
                    ),
                  ),
    );
  }
  
}