import 'package:flutter/material.dart';
import 'package:flutterin/components/medAnimation.dart';

class meditationCard extends StatelessWidget {
  final String meditation;
  final Color color;
  final IconData icon;
  
  const meditationCard({
    super.key,
    required this.meditation,
    required this.color,
    required this.icon,


  });
  
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
                    width: 160.0,
                    height: 200.0,
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
                              Icon(icon, color: color, size: 100),
                              Text(meditation),
                              Text('1 left', style: TextStyle(color: Colors.grey[400], fontSize: 10)),

                              TextButton(
                                onPressed: () {
                                  Navigator.push(context, 
                                  MaterialPageRoute(
                                    builder: (context) => medAnimation())
                                  );
                                },
                                child: Text("Start"), 
                                style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(Colors.black),
                                ),
                                ),
                            ]

                          ),
                        ),
                      ),
                    ),
                    
                  );
  }
}