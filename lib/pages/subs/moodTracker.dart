import 'package:flutter/material.dart';

class moodTrackerPage extends StatelessWidget {
  const moodTrackerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Column(
            children: [
              Text('How are you feeling?'),
              SizedBox(height: 5),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.face),
                    iconSize: 50,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.face),
                    iconSize: 50,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.face),
                    iconSize: 50,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.face),
                    iconSize: 50,
                  ),
                ],
              ),
              SizedBox(height: 10),
              TextButton(onPressed: () {}, child: Text('Go!')),
            ],
          ),
        ),
      ),
    );
  }
}

class moodSlides extends StatefulWidget {
  const moodSlides({super.key});

  @override
  State<moodSlides> createState() => _moodSlidesState();
}

class _moodSlidesState extends State<moodSlides> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
