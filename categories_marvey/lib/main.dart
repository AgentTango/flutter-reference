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
        backgroundColor: Colors.blueAccent,
        body: Container(
          height: 250.0,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 20.0,
                ),
                child: GridView.count(
                  mainAxisSpacing: 5.0,
                  crossAxisSpacing: 5.0,
                  crossAxisCount: 2,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.fastfood,
                          size: 42.0,
                          color: Colors.yellow,
                        ),
                        Text("Food"),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.shopping_basket,
                          size: 42.0,
                          color: Colors.orange,
                        ),
                        Text("Market"),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.videocam,
                          size: 42.0,
                          color: Colors.blue,
                        ),
                        Text("Movies"),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.mic,
                          size: 42.0,
                          color: Colors.purple,
                        ),
                        Text("KTV"),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.flight,
                          size: 42.0,
                          color: Colors.greenAccent,
                        ),
                        Text("Tour"),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.location_city,
                          size: 42.0,
                          color: Colors.blueGrey,
                        ),
                        Text("Hotel"),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.person,
                          size: 42.0,
                          color: Colors.pink,
                        ),
                        Text("Beauty"),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.work,
                          size: 42.0,
                          color: Colors.brown,
                        ),
                        Text("GYM"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }

    return new MaterialApp(
      home: home(),
    );
  }
}
