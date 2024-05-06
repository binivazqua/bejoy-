import 'package:flutter/material.dart';

class moodTrackerPage extends StatelessWidget {
  const moodTrackerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
