import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
class moodTracker extends StatefulWidget {
  const moodTracker({super.key});

  @override
  State<moodTracker> createState() => _moodTrackerState();
}

class _moodTrackerState extends State<moodTracker> {

  final _textController1 = TextEditingController();
  final _textController2 = TextEditingController();
  final _textController3 = TextEditingController();


  // save users track:
  String userPost = ' ';
  String r1 = '';
  String r2 = '';
  String r3 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:  Color.fromARGB(0, 105, 240, 175)),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Container(alignment: Alignment.center, child: Text('Express Mood Tracker')),
            ),

            Container(alignment:Alignment.bottomLeft, child:  Text('¿Cómo te sientes en este momento?')),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: TextField(
                controller: _textController1,
                decoration: InputDecoration(border: UnderlineInputBorder(),
                hintText: '...',
                suffixIcon: IconButton(onPressed: (){
                  _textController1.clear();
                }, icon: Icon(Icons.clear_rounded))
                ),
              ),
            ),

            Container(alignment:Alignment.bottomLeft, child:  Text('¿Cómo te sientes en este momento?')),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: TextField(
                controller: _textController2,
                decoration: InputDecoration(border: UnderlineInputBorder(),
                hintText: '...',
                suffixIcon: IconButton(onPressed: (){
                  _textController2.clear();
                }, icon: Icon(Icons.clear_rounded))
                ),
              ),
            ),

            Container(alignment:Alignment.bottomLeft, child:  Text('¿Cómo te sientes en este momento?')),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: TextField(
                controller: _textController3,
                decoration: InputDecoration(border: UnderlineInputBorder(),
                hintText: '...',
                suffixIcon: IconButton(onPressed: (){
                  _textController3.clear();
                }, icon: Icon(Icons.clear_rounded))
                ),
              ),
            ),

            

            

            

            MaterialButton(
              onPressed: (){
                _textControlVerif1();
                
              },
              child: Text('Save my tracker!'),
            ),

            // display text:
            Container(child: Container(
              child: Center(
                child: Text(userPost),
                )
            )),

          ],
        ),
      ),
    );
  }

  void _textControlVerif1 (){
    if(_textController1.text == 'bien' || _textController1.text == 'feliz' || _textController1.text == 'alegre'){
          setState(() {
          userPost = "Estás de buen humor.";
          });
    } else if(_textController1.text == 'mal' || _textController1.text == 'triste'|| _textController1.text == 'enojado'){
          setState(() {
          userPost = "Necesitamos trabajar en tus sentimientos.";
          });
    }
  }
}