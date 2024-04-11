import 'package:flutter/material.dart';

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
                  color: Colors.grey[300],
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
                           Container(
                            child:
                              Center(
                                child: Text('Go!')
                                ),
                            )
                      
                        ]
                       
                      ),
                    ),
                  ]
                  // cute emoji

                

                ),
              ),
              // card
          
              // horizontal listview --> type of professional
            ]
          ),
        ),
      ),
    );
  }
  
}