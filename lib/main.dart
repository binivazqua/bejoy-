import 'package:flutter/material.dart';
import 'package:flutterin/blocks/loginPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutterin/blocks/navHomePage.dart';
import 'package:flutterin/models/meditationConstants.dart';
import 'package:flutterin/pages/home.dart';
import 'package:flutterin/pages/subs/meditation_base.dart';
import 'package:flutterin/pages/subs/moodQuest.dart';
import 'package:flutterin/pages/subs/registerPage.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  /*
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  */
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _firebaseApp = Firebase.initializeApp();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Urbanist'),
      home: FutureBuilder(
          future: _firebaseApp,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              print('There is an error somewhere around here...');
              return Text('Somethin went WRONG! PIPIPI');
            } else if (snapshot.hasData) {
              return registerPage();
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }),
      routes: {
        '/home': (context) => navHomePage(),
        '/painRelief': (context) => meditationTemplate(
                constants: new meditationConstants(
              color: Colors.indigo,
              timer: 10,
              hints: [
                "Think of three reasons of why you may be angry.",
                "Tension all your limbs. And let go...",
                "Exercise Done."
              ],
              waveColor: Colors.blueAccent,
              duration: 2000,
              title: "Anger Relief",
            )), //meditationTemplate(title: "Anger Relief", color: Colors.orangeAccent, millis: 1000,),
        '/energyBoost': (context) => meditationTemplate(
                constants: new meditationConstants(
              color: Colors.pink,
              timer: 5,
              hints: [
                "Smile! You are amazing!",
                "Think of three things that excite you about today.",
                "Great! You are done."
              ],
              waveColor: Colors.orangeAccent,
              duration: 3000,
              title: "Energy Boost",
            )), //meditationTemplate(title: "Energy Boost", color: Color.fromARGB(255, 240, 235, 105), millis: 3000, ),
        '/focusWave': (context) => meditationTemplate(
                constants: new meditationConstants(
              color: Colors.purpleAccent,
              timer: 15,
              hints: [
                "Now focus on one object in front of you.",
                "Ennumerate three things which make it unique.",
                "Exhale deeply, and you are done."
              ],
              waveColor: Colors.deepPurple,
              duration: 4000,
              title: "Focus Wave",
            )), //meditationTemplate(title: "Focus Wave", color: Color.fromARGB(255, 105, 112, 240), millis: 1000, ),
        '/sos': (context) => meditationTemplate(
                constants: new meditationConstants(
              color: Colors.pink,
              timer: 20,
              hints: [
                "Focus entirely on the echo of your heartbeat.",
                "Try to sync you inhales with its rythm.",
                "Repeat."
              ],
              waveColor: Colors.pinkAccent,
              duration: 4500,
              title: "SOS",
            )), //meditationTemplate(title: "SOS", color: Color.fromARGB(255, 240, 105, 105), millis: 500, ),
      },
    );
  }
}
