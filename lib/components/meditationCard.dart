import 'package:flutter/material.dart';

class meditationCard extends StatelessWidget {
  final String meditation;
  final Color color;
  
  const meditationCard({
    super.key,
    required this.meditation,
    required this.color

  });
  
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
                    width: 160.0,
                    height: 160.0,
                    child: Card(
                      color: Colors.white,
                      elevation: 1.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),

                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Icon(Icons.music_note_rounded, color: Colors.orange[300], size: 100),
                              Text(meditation),
                              Text('1 left', style: TextStyle(color: Colors.grey[400], fontSize: 10)),
                            ]

                          ),
                        ),
                      ),
                    ),
                    
                  );
  }
}