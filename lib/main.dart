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

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      // Use Scaffold Widget instead of Material:
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column( // in Scaffold 'child' changes to 'body'.
          // ALIGN ITEMS -> CSS
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('hello again!'),
          Text('Login to Continue'),
          TextField(
            decoration: InputDecoration(
              hintText: 'enter your username...'
              ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "enter your password..."
            ),
          ),
          TextButton(
            onPressed: () {
              print('Button clicked.');
            }, 
            child: Text('New to Bejoy? Register!',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: ()
          {
            print('Log In Pressed');
          },
           child: Text('Go!',
              style: TextStyle(
              color: Colors.black,
           ),
           ),
           
           style: ButtonStyle(
            
            backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.yellow[500])
           ),

           ),
           ElevatedButton(onPressed: () {
            print('Logged with Google');
           }, 
           child: Text('Use Google instead',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w200
            )
           ),
           
           ),
           
        ],
        ),
      ),
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