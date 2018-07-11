import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  String _lastPressed = "never";

  void _onPressed() {
    print("pressed");
    setState(() {
      DateTime current = new DateTime.now();
      _lastPressed = current.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Floating Button"),
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new Text("Drawer"),
            new RaisedButton(
              onPressed: null,
              child: new Text("Button"),
              color: Colors.blueGrey,
            )
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: (){_onPressed();},
        child: new Icon(Icons.add),
        backgroundColor: Colors.amberAccent,
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[new Text("Last Pressed $_lastPressed")],
          ),
        ),
      ),
    );
  }
}
