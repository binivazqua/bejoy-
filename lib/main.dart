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
      home: navHomePage(),
      
      /*Scaffold(
        backgroundColor: Colors.white,
        body: loginPage(),
      ),
      */
      /*
      routes: {
        '/' : (context) => loginPage(),
        '/home' : (context) => const homePage(),
      },
      */
    );
  }

}

// USE HOT RELOAD: (with Scaffold)

class MyAppScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      // Use Scaffold Widget instead of Material:
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow[300],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
        backgroundColor: Colors.white,
        drawer: Container(
          width: 200,
          height: 500,
          color: Colors.white,
        ),
        body: Column( // in Scaffold 'child' changes to 'body'.
          // ALIGN ITEMS -> CSS
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('hello again!'),
          Text('Login to Continue'),
        ],
        ),
      ),
    );
  }

}