import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterin/blocks/homePage.dart';
import 'package:flutterin/blocks/loginPage.dart';
import 'package:flutterin/blocks/navHomePage.dart';
import 'package:flutterin/components/logoTile.dart';
import 'package:flutterin/components/textField.dart';

void main() {
  // Change the background color:
  //runApp(Container(color:Colors.lightGreen));

  /* MATERIAL DESIGN 
  Google complements made for flutter.
  - We always start with MaterialApp() widgtes.
  - MaterialApp() requires Material() widgets.
  */ 

  runApp(MyApp());
  
}


class MyApp extends StatelessWidget {
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

