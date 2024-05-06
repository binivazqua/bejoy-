
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutterin/pages/chat.dart';
import 'package:flutterin/pages/home.dart';
import 'package:flutterin/pages/meditations.dart';
import 'package:flutterin/pages/user.dart';

class navHomePage extends StatefulWidget {
  const navHomePage ({super.key});
  
  @override
  _navHomePage createState() => _navHomePage();
  
}

class _navHomePage extends State<navHomePage>{
  int selected_index = 0;

  // function to navigate:
  void _navigatedBottomBar (int index) {
    setState(() {
      selected_index = index;
    });
  }

  /* ++++++++++++++ CREATE PAGES ++++++++++++++++ */

  final List<Widget> pages = [
    const UserHome(),
    const StarPage(),
    const ProfilePage(),
    JournalPage(),
  ];
  @override
  Widget build(Object context) {
    // TODO: implement build
    return Scaffold (
      body: pages[selected_index],
      bottomNavigationBar: CurvedNavigationBar(
        index: selected_index,
        
        onTap: _navigatedBottomBar, 
        
        backgroundColor: Colors.white,
        color: const Color.fromRGBO(255, 249, 81, 1),
        animationDuration: const Duration(milliseconds: 300),
       
        items: const [
          Icon(Icons.home
          ),
          Icon(Icons.star_border_rounded
          ),
          Icon(Icons.person
          ),
          Icon(Icons.message
          ),
    
        ]),
    ); 
  }
  
}