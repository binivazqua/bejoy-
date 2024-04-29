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
  String userPost2 = ' ';
  String emotion = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(backgroundColor: Color.fromARGB(0, 105, 240, 175)),
      body: Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Container(
                    alignment: Alignment.center,
                    child: Text('Express Mood Tracker',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold))),
              ),

              Container(
                  alignment: Alignment.bottomLeft,
                  child: Text('¿Cómo te sientes en este momento?')),
              Padding(
                padding: const EdgeInsets.only(bottom: 50, top: 10),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.purple[50],
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    controller: _textController1,
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: '...',
                        suffixIcon: IconButton(
                            onPressed: () {
                              _textController1.clear();
                            },
                            icon: Icon(Icons.clear_rounded))),
                  ),
                ),
              ),

              Container(
                  alignment: Alignment.bottomLeft,
                  child: Text('Rápidamente... ¿Qué piensas?')),
              Padding(
                padding: const EdgeInsets.only(bottom: 50, top: 10),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.pink[50],
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    controller: _textController2,
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: '...',
                        suffixIcon: IconButton(
                            onPressed: () {
                              _textController2.clear();
                            },
                            icon: Icon(Icons.clear_rounded))),
                  ),
                ),
              ),

              Container(
                  alignment: Alignment.bottomLeft,
                  child: Text('¿Cómo te gustaría sentirte ahora?')),
              Padding(
                padding: const EdgeInsets.only(bottom: 30, top: 10),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.orange[50],
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    controller: _textController3,
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: '...',
                        suffixIcon: IconButton(
                            onPressed: () {
                              _textController3.clear();
                            },
                            icon: Icon(Icons.clear_rounded))),
                  ),
                ),
              ),

              MaterialButton(
                color: Colors.grey[50],
                focusColor: const Color.fromARGB(255, 163, 62, 62),
                onPressed: () {
                  _textControlVerif1;
                },
                child: Text('Save my tracker!'),
              ),

              // display text:
              Container(
                  child: Container(
                      padding: EdgeInsets.all(20),
                      child: Center(
                          child: Column(
                        children: [Text(userPost), Text(userPost2)],
                      )))),
            ],
          ),
        ),
      ),
    );
  }

  void _textControlVerif1() {
    String emotion = _textController3.text.toString();

    if ((_textController1.text == 'bien' ||
        _textController1.text == 'feliz' ||
        _textController1.text == 'alegre')) {
      setState(() {
        userPost = "Estás de buen humor.";
      });
    } else if (_textController1.text == 'mal' ||
        _textController1.text == 'triste' ||
        _textController1.text == 'enojado' ||
        (_textController2.text == "no sé" ||
            _textController2.text == "en nada")) {
      setState(() {
        userPost = "Necesitamos trabajar en tus sentimientos.";
      });
    }

    setState(() {
      userPost2 = 'Juntos podemos lograr que te sientas $emotion.';
    });
  }
}
