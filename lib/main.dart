import 'package:flutter/material.dart';
import 'package:flutterin/blocks/loginPage.dart';

void main() {
  // Change the background color:
  //runApp(Container(color:Colors.lightGreen));

  /* MATERIAL DESIGN 
  Google complements made for flutter.
  - We always start with MaterialApp() widgtes.
  - MaterialApp() requires Material() widgets.
  */ 

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
      /*
      routes: {
        '/' : (context) => loginPage(),
        '/home' : (context) => const homePage(),
      },
      */
    );
  }

}

