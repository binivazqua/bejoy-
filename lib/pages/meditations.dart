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
                runSpacing: 20.0,
                children: [
                  myMeditationCard('Pain Relief', Colors.redAccent, Icons.emoji_people_rounded, "painRelief", 3000),
                  myMeditationCard('Energy Boost', Colors.yellow, Icons.add_reaction_rounded, "energyBoost", 2000),
                  myMeditationCard('Focus wave', Colors.deepPurpleAccent, Icons.abc_rounded, "focusWave", 1000),
                  myMeditationCard('SOS', Colors.red ,Icons.emoji_flags_rounded, "sos", 500),
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

Widget myMeditationCard(String m, Color c, IconData i, String route, int number) {
  return meditationCard(meditation: m, color: c, icon: i, route: route, millis: number);
}