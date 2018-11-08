import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Widget home() {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("Review Page"),
        ),
        body: new ListView.builder(
          itemCount: 1,
          itemBuilder: (context, int index) {
            return new ListTile(
              leading: new CircleAvatar(
                child: new Text("R"),
              ),
              title: new Column(
                children: <Widget>[
                  new Text(
                    "Rishi Banerjee",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  new Text(
                    "I really liked this app. Made me earn money so quick, being a college student it really helped a lot",
                  ),
                ],
              ),
              trailing: new Icon(Icons.thumb_up),
            );
          },
        ),
      );
    }

    return new MaterialApp(
      home: home(),
    );
  }
}
