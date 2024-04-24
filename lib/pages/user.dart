
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {

  const ProfilePage ({
    super.key,
  });
  
  
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
                  
                  alignment: Alignment.bottomLeft,
                  children: [ 
                    const CircleAvatar(
                    radius: 50,
                    
                    ),
                    InkWell(
                      onTap: (){},
                      child: const CircleAvatar(
                        backgroundColor: Colors.orange,
                        radius: 12,
                        child: Icon(
                          Icons.edit, size: 15,
                          
                          color: Colors.pink
                          )
                          
                        ),
                    )
                
                ]),

                const Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                  child: Text('Username Profile', style: TextStyle(fontWeight: FontWeight.w600),),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text('username 🤠', style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
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
         Expanded(
           
           child: GridView(
              
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  
                ),

                physics: ScrollPhysics() ,
                children: [
                  myBox('Award 1', Icons.star_outline_rounded, Colors.yellow),
                  myBox('Award 2', Icons.star_outline_rounded, Colors.pink),
                  myBox('Award 3', Icons.star_outline_rounded, Colors.purple),
                  myBox('Award 4', Icons.star_outline_rounded, Colors.blue),
                  myBox('Award 5', Icons.star_outline_rounded, Colors.orange),
                  myBox('Award 6', Icons.star_outline_rounded, Colors.yellow),
                  myBox('Award', Icons.star_outline_rounded, Colors.pink),
                  myBox('Award', Icons.star_outline_rounded, Colors.purple),
                  myBox('Award', Icons.star_outline_rounded, Colors.yellow),


                  



                  

           
           
                ]
              ),
         ),


            

            
          
          
      ],
    ),



    );
    
  }
  
}

Widget myBox (String thing, IconData icon, Color color) {
  return Container(
    
    alignment: Alignment.center,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        
        width: 150,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          
          children: [
              Expanded(
                child: FittedBox(
                  child: Icon(icon, color: color,)
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(thing,
                style: TextStyle()),
              ),
          ],
        ),
      ),
    ),
    

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