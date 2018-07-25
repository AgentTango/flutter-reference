import 'package:flutter/material.dart';

class OldPage extends StatelessWidget {
  final String title;

  OldPage(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
      title: new Text(title),
    ));
  }
}
