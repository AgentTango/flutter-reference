import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _title = "App Bar Demo";
  String _myState = 'default';

  void _pressed(String message) {
    // This is the correct way to do it
    setState(() {
      _myState = message;
    });
    // Below is the wrong way to do it
    // _myState = message;
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: _title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(_title),
          actions: <Widget>[
            new Text(
              "text"
            ),
            new IconButton(
              icon: new Icon(Icons.add_alert),
              onPressed: () {
                _pressed("Alert Pressed");
              },
            ),
            new IconButton(
              icon: new Icon(Icons.search),
              onPressed: () {
                _pressed("Search Pressed");
              },
            ),
            new IconButton(
              icon: new Icon(Icons.people),
              onPressed: () {
                _pressed("Sort Pressed");
              },
            ),
            new RaisedButton(
              child: new Text("DOOM"),
              onPressed: null,
            ),
          ],
        ),
        body: new Container(
          padding: const EdgeInsets.all(32.0),
          child: new Center(
            child: new Text(_myState),
          ),
        ),
      ),
    );
  }
}
