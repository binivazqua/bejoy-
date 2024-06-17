import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterin/components/textField.dart';
import 'package:flutterin/models/colorConstants.dart';

class userData extends StatefulWidget {
  const userData({super.key});

  @override
  State<userData> createState() => _userDataState();
}

class _userDataState extends State<userData> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _lastname = TextEditingController();
  final TextEditingController _age = TextEditingController();
  final TextEditingController _gender = TextEditingController();
  final TextEditingController _diagnostic = TextEditingController();
  final TextEditingController _color = TextEditingController();

  Future addUserDetails(String name, String lastname, String age, String, color,
      String gender) async {
    await FirebaseFirestore.instance.collection('users').add({
      'first name': name,
      'last name': lastname,
      'age': age,
      'color': color,
      'gender': gender,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Fill in some data!'),
            SizedBox(height: 20),
            textField(
                hintDesiredText: 'first name',
                controller: _name,
                obscureText: false),
            textField(
                hintDesiredText: 'lastname',
                controller: _lastname,
                obscureText: false),
            textField(
                hintDesiredText: 'age', controller: _age, obscureText: false),
            textField(
                hintDesiredText: 'gender',
                controller: _gender,
                obscureText: false),
            textField(
                hintDesiredText: 'diagnostic',
                controller: _diagnostic,
                obscureText: false),
            textField(
                hintDesiredText: 'favorite color',
                controller: _color,
                obscureText: false),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Send Data',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(colorConstants.deepPurple)),
            )
          ],
        ),
      ),
    );
  }
}
