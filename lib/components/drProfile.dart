import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class drProfileCard extends StatelessWidget {

  const drProfileCard ({Key? key}) : super (key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        padding: EdgeInsets.all(10),
        
                    decoration: BoxDecoration(
                      color: Colors.purple[200],
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Icon(Icons.person,  size: 40, color: Colors.deepPurple),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(right: 100),
                            child: Text('Dr. Dr Name', style: TextStyle(color: Colors.deepPurple),),
                          ),
                        ],),

      
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.tag_faces_rounded, size: 15,color: Colors.white,),
                            Text('5/5', style: TextStyle(
                              color: Colors.white,
                              fontSize: 10
                            ))
                          ],
                        ),
      
                        
      
                      ],
                    ),
                  ),
    );
  }
  
}