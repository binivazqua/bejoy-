import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {

  const ProfilePage ({
    Key? key,
  }) : super(key: key);
  
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar (backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: IconButton(onPressed: (){} , icon: 
          Icon(
            Icons.share,
            
            color: Colors.amber[500], 
            
            ),
          ),
        ),
      ],

      leading: Padding(
        padding: const EdgeInsets.only(left:20),
        child: IconButton(
          onPressed: (){}, 
          icon: Icon(Icons.arrow_back_ios,
          color: Colors.amber[500],
          
          ),
          ),
      ),
        
    ),

    body: Column(
      children: [
        Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                )
              ],
              )
          ),
          
      ]
    ),



    );
    
  }
  
}