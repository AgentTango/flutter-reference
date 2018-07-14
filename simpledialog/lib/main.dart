import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

enum Answer {
  YES,
  NO,
  MAYBE,
}

class _State extends State<MyApp> {
  String _answer = '';

  void setAnswer(String value) {
    setState(() {
      _answer = value;
    });
  }

  Future<Null> _askuser() async {
    switch (await showDialog(
        context: context,
        child: new SimpleDialog(
          title: new Text("Are you sleepy?"),
          children: <Widget>[
            new SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, Answer.YES);
              },
              child: const Text("yes"),
            ),
            new SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, Answer.NO);
              },
              child: const Text("no"),
            ),
            new SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, Answer.MAYBE);
              },
              child: const Text("maybe"),
            ),
            new Icon(Icons.home),
          ],
        ))) {
      case Answer.YES:
        setAnswer("YES");
        break;
      case Answer.NO:
        setAnswer("NO");
        break;
      case Answer.MAYBE:
        setAnswer("MAYBE");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Simple Dialog"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text("Put Yout Widgets here!"),
              new RaisedButton(
                child: new Text("Click!"),
                onPressed: () {
                  _askuser();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
