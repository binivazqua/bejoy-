import 'dart:convert';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutterin/constant.dart';
import 'package:flutterin/models/colorConstants.dart';
import 'package:highlight_text/highlight_text.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:http/http.dart' as http;

class JournalPage extends StatefulWidget {
  @override
  State<JournalPage> createState() => _JournalPageState();
}

class _JournalPageState extends State<JournalPage> {

  String convertedText = 'Text';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Future<String> speechToText(String filePath) async {
    const apiKey = apiSecretKey;
    var url = Uri.https('api.openai.com', '/v1/audio/transcriptions');
    var request = http.MultipartRequest("POST", url);
    request.headers.addAll(({
     "Authorization": "Bearer $apiKey" 
    }));
    request.fields['model'] = 'whisper-1';
    request.fields['language'] = 'es';
    request.files.add(await http.MultipartFile.fromPath('file', filePath));

    var response = await request.send();
    var newResponse = await http.Response.fromStream(response);

    final responseData = json.decode(newResponse.body);
    print(responseData['text']);
    return responseData['text'];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: AvatarGlow(
          animate: false,
          glowColor: Colors.pinkAccent,
          duration: const Duration(milliseconds: 2000),
          repeat: true,
          child: FloatingActionButton(
            onPressed: () async {
              FilePickerResult? result = await FilePicker.platform.pickFiles();
              if(result != null){
               var text = await speechToText(result.files.single.path!);

               setState(() {
                 convertedText = text;
               });
              }
            },
            child: const Icon(Icons.mic),
          ),
        ),
        appBar: AppBar(
            title: const Text(
                'Confidence:')),
        body: SingleChildScrollView(
          reverse: true,
          child: Container(
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
        ));
  }

  void _listen() async {
  }
}
