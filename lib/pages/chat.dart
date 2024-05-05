import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutterin/models/colorConstants.dart';
import 'package:highlight_text/highlight_text.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class journalPage extends StatefulWidget {
  @override
  State<journalPage> createState() => _journalPageState();
}

class _journalPageState extends State<journalPage> {
  final Map<String, HighlightedWord> _highlights = {
    'alegre': HighlightedWord(
      onTap: () => print('alegre'),
      textStyle: colorConstants.positiveWord,
    ),
    'feliz': HighlightedWord(
        onTap: () => print('feliz'), textStyle: colorConstants.positiveWord),
    'agradecida': HighlightedWord(
      onTap: () => print('agradecida'),
      textStyle: colorConstants.positiveWord,
    ),

    // negativas:
    'triste': HighlightedWord(
      onTap: () => print('triste'),
      textStyle: colorConstants.negativeWord,
    ),
    'ansiosa': HighlightedWord(
        onTap: () => print('ansiosa'), textStyle: colorConstants.negativeWord),
    'frustrada': HighlightedWord(
      onTap: () => print('frustrada'),
      textStyle: colorConstants.negativeWord,
    ),

    // helpful:

    'calmada': HighlightedWord(
      onTap: () => print('calmada'),
      textStyle: colorConstants.helpfulWord,
    ),
    'bien': HighlightedWord(
        onTap: () => print('bien'), textStyle: colorConstants.helpfulWord),
    'mas o menos': HighlightedWord(
      onTap: () => print('mas o menos'),
      textStyle: colorConstants.helpfulWord,
    ),
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
                fontSize: 20.0,
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
