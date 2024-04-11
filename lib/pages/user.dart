import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterin/blocks/subblocks/dragscroll.dart';

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
                Stack(
                  
                  alignment: Alignment.bottomRight,
                  children: [ 
                    CircleAvatar(
                    radius: 50,
                    
                    ),
                    InkWell(
                      onTap: (){},
                      child: CircleAvatar(
                        backgroundColor: Colors.orange,
                        radius: 12,
                        child: Icon(
                          Icons.edit, size: 15,
                          
                          color: Colors.pink
                          )
                          
                        ),
                    )
                
                ]),

                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                  child: Text('Username Profile', style: TextStyle(fontWeight: FontWeight.w600),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text('username 🤠', style: TextStyle(
                            fontWeight: FontWeight.w200
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text('My Awards', style: TextStyle(
                        fontSize: 15,
                      ))
                      ],
                      )
                  ]
                ),
                
              ]),
          ),
          const SizedBox(height: 8),
         GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              children: [
                myBox('Holis'),
                myBox('Holis'),
                myBox('Holis'),
                myBox('Holis'),


              ]
            ),


            

            
          
          
      ],
    ),



    );
    
  }
  
}

Widget myBox (String thing) {
  return Container(
    margin: const EdgeInsets.all(8),
    color: Colors.yellow[300],
    alignment: Alignment.center,
    child: Text(thing)

  );
}

/*

Widget _contentServices(){
  List <ModelServices> = List();
  listServices.add(new ModelServices(title: "Send\nMoney", img: "send.png"));
  listServices.add(new ModelServices(title: "Send\nMoney", img: "send.png"));
  listServices.add(new ModelServices(title: "Send\nMoney", img: "send.png"));
  listServices.add(new ModelServices(title: "Send\nMoney", img: "send.png"));
  listServices.add(new ModelServices(title: "Send\nMoney", img: "send.png"));

}

class ModelServices {
  String title, img;
  // ignore: use_function_type_syntax_for_parameters
  ModelServices({required this.title, required this.img});
}
*/