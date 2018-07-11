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

enum MyDialogAction { yes, no, maybe }

class MyAppState extends State<MyApp> {
  String _text = '';

  void onChange(String value) {
    setState(() {
      _text = value;
    });
  }

  void _dialogResult(MyDialogAction value) {
    print("You selected $value");
    Navigator.pop(context); // closes the dialog! LOL
  }

  void showAlert(String value) {
    if (value.isEmpty) return;
    AlertDialog alertDialog = new AlertDialog(
      content: new Text(
        value,
        style: new TextStyle(fontSize: 30.0),
      ),
      actions: <Widget>[
        new FlatButton(
          child: new Text("Yes"),
          onPressed: () {
            _dialogResult(MyDialogAction.yes);
          },
        ),
        new FlatButton(
          child: new Text("No"),
          onPressed: () {
            _dialogResult(MyDialogAction.no);
          },
        ),
        new FlatButton(
          child: new Text("Maybe"),
          onPressed: () {
            _dialogResult(MyDialogAction.maybe);
          },
        )
      ],
    );

    showDialog(context: context, child: alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Alert Dialog"),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new TextField(
                onChanged: (String value) {
                  onChange(value);
                },
              ),
              new RaisedButton(
                onPressed: () {
                  showAlert(_text);
                },
                child: new Text("Alert Dialog!"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
