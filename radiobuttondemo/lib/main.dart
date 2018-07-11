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
  int _selected = 0;

  void onChanged(int value) {
    {
      setState(() {
        _selected = value;
      });
    }
  }

  List<Widget> makeRadios() {
    List<Widget> list = new List<Widget>();
    for(int i=0; i<3;i++) {
      list.add(new Row(
      children: <Widget>[
        new Text("Radio $i : "),
        new Radio(
          value: i,
          groupValue: _selected,
          onChanged: (int value) {
            onChanged(value);
          },
        ),
      ],
    ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    new Scaffold(
      appBar: new AppBar(
        title: new Text("Radio Button"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: makeRadios(),
          ),
        ),
      ),
    );
  }
}
