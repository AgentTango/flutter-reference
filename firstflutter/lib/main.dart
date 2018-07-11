// lets create a white page

import 'package:flutter/material.dart';

void main() {
  runApp(
    new Center(
      child: new MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context)  {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Void Realms",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Void Realms"),
          backgroundColor: Colors.amberAccent,  // changing the color of the appBr
          ),
        body: new Center(
          child: new RaisedButton(
            onPressed: null,            
            child: new Text("Press Me"),            
          ),
        ),
      ),
    );
  }
}