import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class GroupScreen extends StatelessWidget {
  BorderRadiusGeometry radius = BorderRadius.only(
    topLeft: Radius.circular(24.0),
    topRight: Radius.circular(24.0)
  );

  @override
  Widget build(BuildContext context) {
    var maxHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SlidingUpPanel(
        panel: Center(
          child: Text(
            'This is the sliding Widget',
            style: TextStyle(color: Colors.black),
          ),
        ),
        collapsed: Container(
          // decoration: BoxDecoration(
          //   color: Colors.blueGrey,
          //   borderRadius: radius
          // ),
          child: Center(
            child: Text(
              "This is the collapsed Widget",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        body: Center(
          child: Text('This is the Widget behind the sliding panel'),
        ),
        borderRadius: radius,
        minHeight: 200,
        maxHeight: maxHeight,
      ),
    );
  }
}