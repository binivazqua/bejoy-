import 'package:flutter/material.dart';
import 'package:flutterin/components/meditationCard.dart';

class StarPage extends StatelessWidget {
  const StarPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromARGB(0, 105, 240, 175)),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(left: 50, top: 30, bottom: 30),
                child: Text('My meditation space...',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Kosugi'))),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Center(
                child: Wrap(spacing: 20.0, runSpacing: 20.0, children: [
                  myMeditationCard(
                    'Anger Relief',
                    Colors.redAccent,
                    Icons.emoji_people_rounded,
                    "painRelief",
                  ),
                  myMeditationCard(
                    'Energy Boost',
                    Colors.yellow,
                    Icons.add_reaction_rounded,
                    "energyBoost",
                  ),
                  myMeditationCard(
                    'Focus wave',
                    Colors.deepPurpleAccent,
                    Icons.abc_rounded,
                    "focusWave",
                  ),
                  myMeditationCard(
                    'SOS',
                    Colors.red,
                    Icons.emoji_flags_rounded,
                    "sos",
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget myMeditationCard(
  String m,
  Color c,
  IconData i,
  String route,
) {
  return meditationCard(
    meditation: m,
    color: c,
    icon: i,
    route: route,
  );
}
