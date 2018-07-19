import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {

  String _text = "hey nice!";
  String _textChanger = "Initial Text";

  void changeTextMyBro()  {
    setState(() {
          _textChanger = _text;
        });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Trial Application"),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Text("Hello Everybody"),
            new RaisedButton(
              child: new Text(_textChanger),
              onPressed: changeTextMyBro,
            )
          ],
        ),
      ),
    );
  }
}
