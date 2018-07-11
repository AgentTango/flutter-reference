import 'package:flutter/material.dart';
import 'package:router/screens/home.dart';
import 'package:router/screens/second.dart';
import 'package:router/screens/third.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Routing",
      routes: <String, WidgetBuilder>{
        '/Home': (BuildContext context) => new home(),
        '/Second': (BuildContext context) => new second(),
        '/Third': (BuildContext context) => new third(),
      },
      home: new home(),
    );
  }
}
