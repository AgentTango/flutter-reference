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
            return new Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: CircleAvatar(
                      child: Text("R"),
                    ),
                    title: Text('Rishi Banerjee'),
                    subtitle: Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
                    trailing: Icon(Icons.thumb_up),
                  ),
                ],
              ),
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
