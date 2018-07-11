import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  bool _isChecked = false;

  onChanged(bool value) {
    setState(() {
      _isChecked = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Check Box Demo"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Row(
                children: <Widget>[
                  new Text("Click it "),
                  new Checkbox(
                    value: _isChecked,
                    onChanged: (bool value) {
                      onChanged(value);
                    },
                  )
                ],
              ),
              new CheckboxListTile(
                title: new Text("Click me here"),
                activeColor: Colors.redAccent,
                secondary: Icon(Icons.home),
                value: _isChecked,
                onChanged: (bool value) {
                  onChanged(value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
