import 'dart:convert';

import 'package:audioplayers/audioplayers.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterin/constant.dart';
import 'package:flutterin/models/colorConstants.dart';
import 'package:highlight_text/highlight_text.dart';
import 'package:record/record.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:http/http.dart' as http;

class JournalPage extends StatefulWidget {
  @override
  State<JournalPage> createState() => _JournalPageState();
}

class _JournalPageState extends State<JournalPage> {

  late Record audioRecord;
  late AudioPlayer audioPlayer;
  String convertedText = 'Text';
  bool isRecording = false;
  bool isListening = false;
  String audioPath = '';

  @override
  void initState() {
    audioRecord = Record();
    audioPlayer = AudioPlayer();
    audioPlayer.onPlayerComplete.listen(audioCompletionListener as void Function(void event)?);
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose(){
    audioPlayer.dispose();
    audioRecord.dispose();
    super.dispose();
  }


  Future<String> speechToText(String filePath) async {
  try {
    const apiKey = apiSecretKey;
    var url = Uri.https('api.openai.com', '/v1/audio/transcriptions');
    var request = http.MultipartRequest("POST", url);
    request.headers.addAll(({
      "Authorization": "Bearer $apiKey" 
    }));
    request.fields['model'] = 'whisper-1';
    request.fields['language'] = 'es';
    request.fields['response_format'] = 'verbose_json';
    request.files.add(await http.MultipartFile.fromPath('file', filePath));

    var response = await request.send();
    var newResponse = await http.Response.fromStream(response);

    final responseData = json.decode(newResponse.body);
    print(responseData);
    return responseData['text'];
  } catch (e) {
    print("Error al procesar la solicitud: $e");
    return "Error al procesar la solicitud";
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: AvatarGlow(
          animate: isRecording,
          glowColor: Colors.pinkAccent,
          duration: const Duration(milliseconds: 2000),
          repeat: true,
          child: FloatingActionButton(
            backgroundColor: colorConstants.periwinkle,
            onPressed: isRecording ? stopRecording : startRecording,
            child: Icon(isRecording ? Icons.mic : Icons.mic_none),
          ),
        ),
        appBar: AppBar(
            title: const Text(
                'Confidence:')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 150.0),
              child: TextHighlight(
                text: convertedText,
                words: {},
                textStyle: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
            ),
            
        
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: startListeningRecording,
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      minimumSize: const Size(40, 60),
                      backgroundColor: colorConstants.periwinkle
                    ), 
                    child: Icon(isListening ? Icons.volume_mute : Icons.volume_up),
                    ),
                ),
              ],
            ),
        
          ],
        ));
  }

  audioCompletionListener() {
    setState(() {
      isListening = false;
    });
  }

  Future<void> startListeningRecording() async {
    try {
      print('Playing...');
      Source source = UrlSource(audioPath);
      setState(() {
        isListening = true;
      });
      await audioPlayer.play(source);
    } catch (e) {
      setState(() {
        isListening = false;
      });
      print('Error while playing audio... $e');
    }
  }

  Future<void> stopListeningRecording() async {
    try {
      print('Stopped listening');
      setState(() {
        isListening = false;
      });
      await audioPlayer.stop();
    } catch (e) {
      setState(() {
        isListening = true;
      });
    }
  }

  void startRecording() async {
    try {
      if(await audioRecord.hasPermission()){
        audioRecord.start();
        setState(() {
          isRecording = true;
        });
      }
      
    } catch (e) {
      print('Error recording: $e');
    }
  }

  void stopRecording() async {
  try {
    String? path = await audioRecord.stop();
    setState(() {
      isRecording = false;
      audioPath = path!;
    });
    String? newText = await speechToText(path!.substring(7));
    setState(() {
      convertedText = newText;
    });
  } catch (e) {
    print('Error stoping recorder $e');
  }
}

}
