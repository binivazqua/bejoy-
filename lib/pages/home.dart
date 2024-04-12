import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterin/components/drProfile.dart';
import 'package:flutterin/components/utils.dart';

class UserHome extends StatelessWidget {
  const UserHome({super.key});

  
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
        child: SafeArea(
          child: Column (
            children: [
              // user app bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hey!', style: TextStyle(fontWeight: FontWeight.bold),),
                    
                    Text('Username', style: TextStyle(fontSize: 20)),

                  ],
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink[100],
                    
                  ),
      
                  child: Icon(Icons.person, color: Colors.pink[300],)
                  ),
                

              ],),

              SizedBox(height: 20),

              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.orange[300],
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.purple[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(width: 25),
                    Expanded(
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start ,
                        children: [
                           Text('How are you feeling?', style: TextStyle(fontWeight: FontWeight.bold)),
                           Text('Track your mood now.'),
                           
                           SizedBox(height: 10),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(3),
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey,
                                ),
                                child: Center(
                                  child: Text('Go!')
                                  ),
                            )
                        ]
                      ),
                    ),
                  ]
                ),
              ),
              // card
              SizedBox(height: 25),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.tag_faces_outlined),
                    border: InputBorder.none,
                    hintText: 'How can we help you?', hintStyle: TextStyle(fontSize: 13, )
                  ),
                ),
              ),
              // horizontal listview --> type of professional
              SizedBox(height: 25),

              Container(
                height: 80,
                
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    utilContainer(text: 'Love', icon: Icons.favorite),
                    utilContainer(text: 'Love', icon: Icons.favorite),
                    utilContainer(text: 'Love', icon: Icons.favorite),
                    utilContainer(text: 'Love', icon: Icons.favorite),
                    utilContainer(text: 'Love', icon: Icons.favorite),

                  ],
                ),
              ),

              SizedBox(height: 25),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Nuestros especialistas',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    )),
                    Text('Ver todos', style: TextStyle(
                      fontSize: 11,
                      color: Colors.grey[600],
                      
                    ))
                  ],),
                ),

                SizedBox(height: 25),

                Expanded(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      drProfileCard(),
                      drProfileCard(),
                      drProfileCard(),
                      drProfileCard(),
                    ],
                  )
                  ),

               
            ]
          ),
        ),
      ),
    );
  }
  
}