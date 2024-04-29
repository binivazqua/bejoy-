import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:highlight_text/highlight_text.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class journalPage extends StatefulWidget {
  @override
  State<journalPage> createState() => _journalPageState();
}

class _journalPageState extends State<journalPage> {
  final Map<String, HighlightedWord> _highlights = {
    'siento': HighlightedWord(
      onTap: () => print('siento'),
      textStyle: TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.bold,
        fontSize: 32.0,
      ),
    )
  };
  // ignore: unused_field
  //stt.SpeechToText _speech;
  stt.SpeechToText _speech = stt.SpeechToText();
  bool isListening = false;
  double _confidence = 1.0;
  String _text = "Mantén presionado y empieza a fluir";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: AvatarGlow(
          animate: isListening,
          glowColor: Colors.pinkAccent,
          duration: Duration(milliseconds: 2000),
          repeat: true,
          child: FloatingActionButton(
            onPressed: _listen,
            child: Icon(isListening ? Icons.mic : Icons.mic_none),
          ),
        ),

        /*
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AvatarGlow(
        animate: isListening,
        glowShape: BoxShape.circle,
        duration: Duration(milliseconds: 2000),
        glowColor: Colors.pinkAccent,
        repeat: true,
        
        child: GestureDetector(
          onTapDown:(details) {
            setState(() {
              isListening = true;
            });
          },

          onTapUp:(details) {
            setState(() {
              isListening = false;
            });
          }, 
          child: CircleAvatar(
            backgroundColor: Colors.pink[200],
            radius: 35,
            child: Icon(isListening ? Icons.mic : Icons.mic_none, color: Colors.white)
          ),
        ),
      ),*/

        appBar: AppBar(
            title: Text(
                'Confidence: ${(_confidence * 100.0).toStringAsFixed(1)}%')),
        body: SingleChildScrollView(
          reverse: true,
          child: Container(
            padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 150.0),
            child: TextHighlight(
              text: _text,
              words: _highlights,
              textStyle: TextStyle(
                fontSize: 32.0,
                color: Colors.black,
              ),
            ),
          ),
        ));
  }

  void _listen() async {
    if (!isListening) {
      bool available = await _speech.initialize(
        onStatus: (val) => print('onStatus: $val'),
        onError: (val) => print('onError: $val'),
      );

      if (available) {
        setState(() {
          isListening = true;
        });

        _speech.listen(
          onResult: (val) => setState(() {
            _text = val.recognizedWords;
            if (val.hasConfidenceRating && val.confidence > 0) {
              _confidence = val.confidence;
            }
          }),
        );
      }
    } else {
      setState(() {
        isListening = false;
        _speech.stop();
      });
    }
  }
}
