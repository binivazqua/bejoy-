import 'package:flutter/material.dart';
import 'package:flutterin/components/meditationCard.dart';

class StarPage extends StatelessWidget {
  const StarPage({super.key});

  
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(child: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.settings, color:Colors.orange),
                Text('Spaced')
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Text('My meditation space...', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500))
          ),

          Padding(
            padding: EdgeInsets.all(12.0),
            child: Center(  
              child: Wrap(
                
                spacing: 20.0,
                runSpacing: 20.0 ,
                children: [
                  meditationCard(meditation: 'Orange'),
                  meditationCard(meditation: 'Purple'),
                  meditationCard(meditation: 'Blue',),
                  meditationCard(meditation: 'Green',),
                ]

              ),
            ),
            ),
        ],
      ),
      ),
    );
    
  }
  
}