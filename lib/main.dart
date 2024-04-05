import 'package:flutter/material.dart';

void main() {
  // Change the background color:
  //runApp(Container(color:Colors.lightGreen));

  /* MATERIAL DESIGN 
  Google complements made for flutter.
  - We always start with MaterialApp() widgtes.
  - MaterialApp() requires Material() widgets.
  */ 

  
   //NON-HOT RELOAD:
  
  /*
  //Use text widgets:
  runApp(MaterialApp(
    home: Material(
      child: Column(

        children: [
          /* CHILDREN & COLUMNS: allow
           to create a 'list' of
          elements .*/ 
          Text('text 1'),
          Text('text 2'),
          MyApp()
        ]
      ),
    ),
  ));

  */
  runApp(MyApp());
  
}

// Create your own methods:
/*
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('olis');

  }
}
*/

// USE HOT RELOAD:
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Material(
        child: Column(children: [
          Text('holis'),
          Text('crayolis'),
        ],)
      ),
    );
  }

}