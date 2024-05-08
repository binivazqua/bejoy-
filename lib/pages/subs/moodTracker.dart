import 'package:flutter/material.dart';

class moodTrackerPage extends StatelessWidget {
  const moodTrackerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return moodSlides();
  }
}

class moodSlides extends StatefulWidget {
  const moodSlides({super.key});

  @override
  State<moodSlides> createState() => _moodSlidesState();
}

class _moodSlidesState extends State<moodSlides> {
  // TODO: Create an empty list to save user's moods:
  List moods = [];
  List<Icon> water = [
    Icon(
      Icons.water_drop_rounded,
      color: Colors.blue[900],
    ),
    Icon(
      Icons.water_drop_rounded,
      color: Colors.blue[800],
    ),
    Icon(
      Icons.water_drop_rounded,
      color: Colors.blue[700],
    ),
    Icon(Icons.water_drop_rounded, color: Colors.blue)
  ];

  int icon_index = 0;
  // TODO: Create a questions list in order to go from one slide to another...
  List<String> questions = [
    'Have you drinked enough water today?',
    'Do you feel ready to face the day ahead?',
  ];

  // CREATE INDEXER:
  int question_index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Column(
            children: [
              Text('¿Cómo te sientes hoy?'),
              SizedBox(height: 5),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    //icon: water[icon_index],
                    icon: Icon(Icons.face),
                    iconSize: 50,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.face_2),
                    //icon: water[icon_index + 1],
                    iconSize: 50,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.face_3),
                    //icon: water[icon_index + 2],
                    iconSize: 50,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.face_4),
                    //icon: water[icon_index + 3],
                    iconSize: 50,
                  ),
                ],
              ),
              SizedBox(height: 10),
              //TextButton(onPressed: () {}, child: Text('Siguiente')),

              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_back_ios_rounded)),
                  IconButton(
                      // ICON INDEX TEST -> WORK ON IT!
                      /*
                      onPressed: () {
                        setState(() {
                          icon_index++;
                        });
                      },
                    */
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => waterTracker()));
                      },
                      icon: Icon(Icons.arrow_forward_ios_rounded)),
                ],
              ),

              // FOR FURTHER ICON MODIFS:
              /*
              FilledButton(
                  onPressed: () {},
                  child: Image(image: AssetImage('lib/images/google.png'))),
              */
            ],
          ),
        ),
      ),
    );
  }
}

class waterTracker extends StatelessWidget {
  const waterTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Column(
            children: [
              Text('¿Cómo te sientes hoy?'),
              SizedBox(height: 5),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.water_drop_rounded),
                    iconSize: 50,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.water_drop_rounded),
                    iconSize: 50,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.water_drop_rounded),
                    iconSize: 50,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.water_drop_rounded),
                    iconSize: 50,
                  ),
                ],
              ),
              SizedBox(height: 10),
              //TextButton(onPressed: () {}, child: Text('Siguiente')),

              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => moodSlides()));
                      },
                      icon: Icon(Icons.arrow_back_ios_rounded)),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => readynessTracker()));
                      },
                      icon: Icon(Icons.arrow_forward_ios_rounded)),
                ],
              ),

              // FOR FURTHER ICON MODIFS:
              /*
              FilledButton(
                  onPressed: () {},
                  child: Image(image: AssetImage('lib/images/google.png'))),
              */
            ],
          ),
        ),
      ),
    );
  }
}

class readynessTracker extends StatefulWidget {
  const readynessTracker({super.key});

  @override
  State<readynessTracker> createState() => _readynessTrackerState();
}

class _readynessTrackerState extends State<readynessTracker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Column(
            children: [
              Text('¿Estás lista para enfrentar el día?'),
              SizedBox(height: 5),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.follow_the_signs_rounded),
                    iconSize: 50,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.water_drop_rounded),
                    iconSize: 50,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.water_drop_rounded),
                    iconSize: 50,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.water_drop_rounded),
                    iconSize: 50,
                  ),
                ],
              ),
              SizedBox(height: 10),
              //TextButton(onPressed: () {}, child: Text('Siguiente')),

              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => waterTracker()));
                      },
                      icon: Icon(Icons.arrow_back_ios_rounded)),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios_rounded)),
                ],
              ),

              // FOR FURTHER ICON MODIFS:
              /*
              FilledButton(
                  onPressed: () {},
                  child: Image(image: AssetImage('lib/images/google.png'))),
              */
            ],
          ),
        ),
      ),
    );
  }
}
