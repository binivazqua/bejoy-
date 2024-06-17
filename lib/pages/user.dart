import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterin/components/audioPlayer.dart';
import 'package:flutterin/pages/subs/userData.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromARGB(0, 105, 240, 175)),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(alignment: Alignment.bottomLeft, children: [
                    const CircleAvatar(
                      radius: 50,
                      child: Icon(Icons.person, size: 60, color: Colors.purple),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => userData()));
                      },
                      child: const CircleAvatar(
                          backgroundColor: Colors.orange,
                          radius: 12,
                          child:
                              Icon(Icons.edit, size: 15, color: Colors.pink)),
                    )
                  ]),
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                    child: Text(
                      'Biniza Vazquez',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              'bini 🤠',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text('My Awards',
                                style: TextStyle(
                                  fontSize: 15,
                                ))
                          ],
                        )
                      ]),
                ]),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                physics: ScrollPhysics(),
                children: [
                  myBox('Responsibility', Icons.star_outline_rounded,
                      Colors.yellow),
                  myBox(
                      'Respect', Icons.accessibility_new_outlined, Colors.pink),
                  myBox('Awareness', Icons.access_alarm_rounded, Colors.purple),
                  myBox('Love', Icons.favorite_border_rounded, Colors.blue),
                  myBox(
                      'Confidence', Icons.add_reaction_rounded, Colors.orange),
                  myBox(
                      'Altruism', Icons.handshake_outlined, Colors.blueAccent),
                  myBox('Honesty', Icons.messenger_outline_sharp, Colors.pink),
                  myBox('Humble', Icons.hail_sharp, Colors.purple),
                  myBox('Calmness', Icons.waves_rounded, Colors.pink),
                ]),
          ),
        ],
      ),
    );
  }
}

Widget myBox(String thing, IconData icon, Color color) {
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
                  child: Icon(
                icon,
                color: color,
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child:
                  Text(thing, softWrap: true, style: TextStyle(fontSize: 10)),
            ),
            audioPlayer(),
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