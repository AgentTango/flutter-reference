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
  String _text = "";

  void onPressed() {
    print(_text);
  }

  void onPressed2() {
    print(_controller.text);
  }

  void onChanged(String value) {
    setState(() {
      _text = value;
    });
  }

  final TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Textfield Demo"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new TextField(
                controller: _controller,
                onChanged: (String value) {
                  onChanged(value);                  
                },
                maxLines: 3,
                autocorrect: true,
                obscureText: true,  // for password
                decoration: new InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: "Type Something Here",
                  labelText: "What is your name?"
                ),
              ),
              new RaisedButton(
                padding: new EdgeInsets.all(16.0),
                child: new Text("Dank!"),
                onPressed: () {
                  onPressed2();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
