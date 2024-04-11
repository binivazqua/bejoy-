import 'package:flutter/material.dart';

class DraggableScroll extends StatelessWidget {
  const DraggableScroll({super.key});
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DraggableScrollableSheet(
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          color: Colors.red,
          child: ListView.builder(
            controller: scrollController,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return const ListTile(
                
              );
            }

          )
        );
      }
      );
  }
  
}