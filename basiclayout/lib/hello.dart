import 'package:flutter/material.dart';

class hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: new Column(
        children: <Widget>[
          new Text("Hello"),
          new Text("World"),
          new Text("!!!"),
        ],
      ),
    );
  }
}
