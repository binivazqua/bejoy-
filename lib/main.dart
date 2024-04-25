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
      /*
      routes: {
        '/' : (context) => loginPage(),
        '/home' : (context) => const homePage(),
      },
      */
    );
  }

}

