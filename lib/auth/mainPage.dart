import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterin/blocks/homePage.dart';
import 'package:flutterin/blocks/loginPage.dart';
import 'package:flutterin/blocks/navHomePage.dart';
import 'package:flutterin/pages/home.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            print('User signed in!');
            return navHomePage();
          } else {
            print('User not signed in!');
            return loginPagee();
          }
        },
      ),
    );
  }
}
