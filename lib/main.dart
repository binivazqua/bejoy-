import 'package:flutter/material.dart';
import 'package:flutterin/blocks/loginPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutterin/pages/subs/meditation_base.dart';
import 'firebase_options.dart';

Future<void> main() async {
  // Change the background color:
  //runApp(Container(color:Colors.lightGreen));

  /* MATERIAL DESIGN 
  Google complements made for flutter.
  - We always start with MaterialApp() widgtes.
  - MaterialApp() requires Material() widgets.
  */ 
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
  
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      // Use Scaffold Widget instead of Material:
      home: loginPage(),
      //home: meditationTemplate(),
      
      routes: {
       // '/' : (context) => loginPage(),
        '/painRelief' : (context) => const meditationTemplate(title: "Anger Relief", color: Colors.greenAccent, millis: 1000, ),
        '/energyBoost' : (context) => const meditationTemplate(title: "Energy Boost", color: Color.fromARGB(255, 240, 235, 105), millis: 3000,),
        '/focusWave' : (context) => const meditationTemplate(title: "Focus Wave", color: Color.fromARGB(255, 105, 112, 240), millis: 1000,),
        '/sos' : (context) => const meditationTemplate(title: "SOS", color: Color.fromARGB(255, 240, 105, 105), millis: 500,),
      },
      
    );
  }

}

