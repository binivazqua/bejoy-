import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class drProfileCard extends StatelessWidget {
  final String drname;
  final String score;
  final Color color;

  const drProfileCard({
    Key? key,
    required this.drname,
    required this.score,
    required this.color,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(10),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Icon(Icons.person, size: 40, color: Colors.white),
              ),
              Container(
                width: 180,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  child: Text(
                    drname,
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                Icons.tag_faces_rounded,
                size: 15,
                color: Colors.white,
              ),
              Text('$score/5',
                  style: TextStyle(color: Colors.white, fontSize: 10))
            ],
          ),
        ],
      ),
    );
  }
}
