import 'package:flutter/material.dart';

class DraggableScroll extends StatelessWidget {
  const DraggableScroll({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DraggableScrollableSheet(
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          color: Colors.grey[50],
          child: ListView.builder(
            controller: scrollController,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return ListTile();
            }

          )
        );
      }
      );
  }
  
}