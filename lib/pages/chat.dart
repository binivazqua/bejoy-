import 'package:flutter/material.dart';

class journalPage extends StatefulWidget {
  const journalPage({super.key});

  @override
  State<journalPage> createState() => _journalPageState();
}

class _journalPageState extends State<journalPage> {
  var hint = "Mantén presionado y empieza a fluir";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CircleAvatar(
        backgroundColor: Colors.pink[200],
        radius: 35,
        child: Icon(Icons.mic, color: Colors.white)
      ),
      appBar: AppBar(
        title: Text('My journal')
      ),

    body: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal:24, vertical: 16),
      margin:  EdgeInsets.only(bottom: 150),
      child: Text(hint),
    ),
    );
  }
}