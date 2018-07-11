import 'package:flutter/material.dart';
import 'package:basiclayout/hello.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Basic Layouts"),
        ),
        
        body: new Container(
          
          child: new Column(
            
            children: <Widget>[
              new hello(),
              new Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new hello(),
                  new hello(),
                  new hello(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
